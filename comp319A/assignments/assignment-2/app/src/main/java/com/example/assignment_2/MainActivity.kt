package com.example.assignment_2

import android.annotation.SuppressLint
import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.Image
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.ArrowBack
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import com.example.assignment_2.ui.theme.Assignment2Theme
import java.time.LocalDate
import java.time.YearMonth
import androidx.navigation.compose.NavHost
import androidx.navigation.compose.composable
import androidx.navigation.compose.rememberNavController
import androidx.navigation.NavHostController
import androidx.navigation.NavType
import androidx.navigation.navArgument
import java.util.*
import androidx.compose.material3.Surface
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.material3.ExperimentalMaterial3Api
import android.content.Context
import android.content.SharedPreferences
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.material.icons.filled.Delete
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.painter.Painter
import java.time.format.TextStyle
import androidx.compose.material3.MaterialTheme
import androidx.compose.ui.text.style.TextDecoration
import com.example.assignment_2.ui.theme.isDarkThemeGlobal
import java.time.LocalDateTime
import java.time.format.DateTimeFormatter
import androidx.lifecycle.ViewModel
import androidx.lifecycle.ViewModelProvider
import androidx.lifecycle.viewModelScope
import androidx.lifecycle.viewmodel.compose.viewModel
import kotlinx.coroutines.launch


class CommentsViewModel(context: Context) : ViewModel() {
    private val sharedPreferences = context.getSharedPreferences("com.example.assignment_2.comments", Context.MODE_PRIVATE)
    private val _comments = mutableStateOf<List<CommentWithDate>>(listOf())

    fun loadComments(dayId: Int) {
        viewModelScope.launch {
            val savedCommentsString = sharedPreferences.getString("comments_day_$dayId", "") ?: ""
            val initialComments = if (savedCommentsString.isNotBlank()) {
                savedCommentsString.split("|").map { CommentWithDate.fromString(it) }
            } else listOf()
            _comments.value = initialComments
        }
    }

    fun addComment(dayId: Int, comment: CommentWithDate) {
        val updatedComments = _comments.value + comment
        _comments.value = updatedComments
        saveComments(dayId, updatedComments)
    }

    fun deleteComment(dayId: Int, commentToDelete: CommentWithDate) {
        val updatedComments = _comments.value.filter { it != commentToDelete }
        _comments.value = updatedComments
        saveComments(dayId, updatedComments)
    }

    private fun saveComments(dayId: Int, comments: List<CommentWithDate>) {
        val commentsString = comments.joinToString("|") { it.toString() }
        sharedPreferences.edit().putString("comments_day_$dayId", commentsString).apply()
    }
}

fun clearAllComments(context: Context) {
    val sharedPreferences = context.getSharedPreferences("com.example.assignment_2.comments", Context.MODE_PRIVATE)
    sharedPreferences.edit().clear().apply()
}

data class CommentWithDate(val comment: String, val date: LocalDateTime) {
    override fun toString(): String {
        val formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm")
        return "${date.format(formatter)}: $comment"
    }

    companion object {
        fun fromString(str: String): CommentWithDate {
            val (dateStr, comment) = str.split(": ", limit = 2)
            val date = LocalDateTime.parse(dateStr, DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm"))
            return CommentWithDate(comment, date)
        }
    }
}

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            Assignment2Theme {
                val navController = rememberNavController()
                Surface(
                    modifier = Modifier.fillMaxSize(),
                    color = MaterialTheme.colorScheme.background
                ) {
                    NavigationGraph(navController = navController, applicationContext)
                }
            }
        }
    }

    class CommentsViewModelFactory(private val context: Context) : ViewModelProvider.Factory {
        override fun <T : ViewModel> create(modelClass: Class<T>): T {
            if (modelClass.isAssignableFrom(CommentsViewModel::class.java)) {
                @Suppress("UNCHECKED_CAST")
                return CommentsViewModel(context) as T
            }
            throw IllegalArgumentException("Unknown ViewModel class")
        }
    }
}




@Composable
fun NavigationGraph(navController: NavHostController, context: Context? = null) {
    NavHost(navController = navController, startDestination = "main_screen") {
        composable("main_screen") { MainScreen(navController) }
        composable("past_quotes_screen") { PastQuotesScreen(navController) }
        composable("day_detail_screen/{dayId}", arguments = listOf(navArgument("dayId") { type = NavType.IntType })) { backStackEntry ->
            val dayId = backStackEntry.arguments?.getInt("dayId") ?: 0
            // Use LocalContext.current as a fallback if context is null
            val actualContext = context ?: LocalContext.current
            DayDetailScreen(dayId, navController, actualContext)
        }
    }
}



fun getSharedPreferences(context: Context): SharedPreferences {
    return context.getSharedPreferences("com.example.assignment_2.comments", Context.MODE_PRIVATE)
}


@SuppressLint("DiscouragedApi")
@Composable
fun MainScreen(navController: NavHostController) {
    val context = LocalContext.current
    var today = LocalDate.now().dayOfYear % 30
    if (today == 0) today = 30

    val quoteResId = context.resources.getIdentifier("quote_day_$today", "string", context.packageName)
    val imageResId = context.resources.getIdentifier("image_day_$today", "drawable", context.packageName)

    val dailyQuote = context.getString(quoteResId)
    val image = painterResource(id = imageResId)

    Column(
        modifier = Modifier
            .fillMaxSize()
            .padding(16.dp),
        verticalArrangement = Arrangement.SpaceBetween,
        horizontalAlignment = Alignment.CenterHorizontally
    ) {
        Text(
            text = "Day $today",
            style = MaterialTheme.typography.headlineMedium.copy(color = MaterialTheme.colorScheme.primary),
            modifier = Modifier.padding(bottom = 8.dp)
        )
        Image(
            painter = image,
            contentDescription = "Wellness Image for Day $today",
            modifier = Modifier
                .height(200.dp)
                .fillMaxWidth()
                .padding(16.dp)
                .clickable { navController.navigate("day_detail_screen/$today") },
        )
        Text(
            text = dailyQuote,
            style = MaterialTheme.typography.bodyLarge,
            modifier = Modifier.padding(8.dp)
        )
        Button(
            onClick = { navController.navigate("past_quotes_screen") },
            colors = ButtonDefaults.buttonColors(
                MaterialTheme.colorScheme.secondary, // First positional argument for background color
                contentColor = Color.White
            ),
            shape = RoundedCornerShape(8.dp)
        ) {
            Text("Menu")
        }
    }
}

@SuppressLint("DiscouragedApi")
@Composable
fun PastQuotesScreen(navController: NavHostController) {
    val context = LocalContext.current
    val today = LocalDate.now()

    val numDaysToDisplay = today.dayOfMonth

    LazyColumn {
        item {
            Button(onClick = { navController.popBackStack() }) {
                Text("Back to Today")
            }
        }
        item { MonthCalendarView(today.withDayOfMonth(1), YearMonth.from(today).lengthOfMonth(), navController) }

        items(numDaysToDisplay) { dayIndex ->
            val day = if (dayIndex < today.dayOfMonth) dayIndex + 1 else dayIndex
            val quoteResId = context.resources.getIdentifier("quote_day_$day", "string", context.packageName)
            val descResId = context.resources.getIdentifier("quote_desc_day_$day", "string", context.packageName)
            val imageResId = context.resources.getIdentifier("image_day_$day", "drawable", context.packageName)

            if (quoteResId != 0 && imageResId != 0) {
                val dailyQuote = context.getString(quoteResId)
                val dailyDesc = if (descResId != 0) context.getString(descResId) else "Description not available"
                val image = painterResource(id = imageResId)
                QuoteWithImage(day, dailyQuote, dailyDesc, image, navController)
                Divider()
            }
        }
    }
}

fun isPastOrToday(date: LocalDate, today: LocalDate): Boolean {
    return !date.isAfter(today)
}

@Composable
fun QuoteWithImage(day: Int, quote: String, desc: String, image: Painter, navController: NavHostController) {
    Surface(
        modifier = Modifier
            .padding(8.dp)
            .fillMaxWidth()
            .clickable { navController.navigate("day_detail_screen/$day") },
        shape = RoundedCornerShape(8.dp),
    ) {
        Column(
            modifier = Modifier.padding(16.dp),
            horizontalAlignment = Alignment.CenterHorizontally
        ) {
            Text(
                text = "Day $day",
                style = MaterialTheme.typography.titleMedium

            )
            Image(
                painter = image,
                contentDescription = "Image for Day $day",
                modifier = Modifier
                    .height(150.dp)
                    .fillMaxWidth()
            )
            Text(
                text = quote,
                style = MaterialTheme.typography.bodyLarge.copy(textDecoration = TextDecoration.Underline),
                textAlign = TextAlign.Center,
                modifier = Modifier
                    .padding(top = 8.dp)
            )
            Text(
                text = desc,
                style = MaterialTheme.typography.bodySmall,
                textAlign = TextAlign.Center,
                modifier = Modifier.padding(top = 4.dp)
            )
        }
    }
}

@SuppressLint("UnusedMaterial3ScaffoldPaddingParameter", "DiscouragedApi")
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun DayDetailScreen(dayId: Int, navController: NavHostController, context: Context) {
    val localContext = LocalContext.current
    val viewModel: CommentsViewModel = viewModel(factory = MainActivity.CommentsViewModelFactory(localContext))


    viewModel.loadComments(dayId)
    val quoteResId = context.resources.getIdentifier("quote_day_$dayId", "string", context.packageName)
    val descResId = context.resources.getIdentifier("quote_desc_day_$dayId", "string", context.packageName)
    val imageResId = context.resources.getIdentifier("image_day_$dayId", "drawable", context.packageName)

    val dailyQuote = if (quoteResId != 0) context.getString(quoteResId) else "No Quote Available"
    val dailyDesc = if (descResId != 0) context.getString(descResId) else "Description not available"
    val image = if (imageResId != 0) painterResource(id = imageResId) else painterResource(android.R.drawable.ic_menu_gallery)

    val sharedPreferences = getSharedPreferences(context)

    val savedCommentsString = sharedPreferences.getString("comments_day_$dayId", "") ?: ""
    val initialComments = if (savedCommentsString.isNotBlank()) {
        savedCommentsString.split("|").map { CommentWithDate.fromString(it) }
    } else listOf()

    val currentDateTime = LocalDateTime.now()
    var userComment by remember { mutableStateOf("") }
    var comments by remember { mutableStateOf(initialComments) }

    fun deleteComment(commentToDelete: CommentWithDate) {
        val updatedComments = comments.filter { it != commentToDelete }
        comments = updatedComments
        val commentsString = updatedComments.joinToString("|") { it.toString() }
        sharedPreferences.edit().putString("comments_day_$dayId", commentsString).apply()
    }

    Scaffold(
        topBar = {
            TopAppBar(
                title = { Text("Day Details") },
                navigationIcon = {
                    IconButton(onClick = { navController.popBackStack() }) {
                        Icon(Icons.Filled.ArrowBack, contentDescription = "Back")
                    }
                }
            )
        }
    ) {
        LazyColumn(
            modifier = Modifier
                .fillMaxSize()
                .padding(16.dp)
        ) {
            item {
                Image(
                    painter = image,
                    contentDescription = "Selected Day Image",
                    modifier = Modifier
                        .height(200.dp)
                        .fillMaxWidth()
                )
                Spacer(modifier = Modifier.height(16.dp))
                Text(
                    text = dailyQuote,
                    style = MaterialTheme.typography.bodyLarge,
                    textAlign = TextAlign.Center
                )
                Spacer(modifier = Modifier.height(8.dp))
                Text(
                    text = dailyDesc,
                    style = MaterialTheme.typography.bodyMedium,
                    textAlign = TextAlign.Center
                )
                Spacer(modifier = Modifier.height(20.dp))
            }

            item {
                OutlinedTextField(
                    value = userComment,
                    onValueChange = { userComment = it },
                    label = { Text("Add a comment") },
                    modifier = Modifier.fillMaxWidth()
                )
                Spacer(modifier = Modifier.height(8.dp))
                Button(onClick = {
                    if (userComment.isNotBlank()) {
                        val updatedComments = comments + CommentWithDate(userComment, currentDateTime)
                        comments = updatedComments
                        userComment = ""
                        val commentsString = updatedComments.joinToString("|") { it.toString() }
                        sharedPreferences.edit().putString("comments_day_$dayId", commentsString).apply()
                    }
                }) {
                    Text("Submit Comment")
                }
                Spacer(modifier = Modifier.height(16.dp))
            }

            items(comments) { commentWithDate ->
                Row(
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(vertical = 4.dp),
                    horizontalArrangement = Arrangement.SpaceBetween,
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    Column {
                        Text(
                            text = commentWithDate.comment,
                            style = MaterialTheme.typography.bodyMedium
                        )
                        Text(
                            text = commentWithDate.date.format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm")),
                            style = MaterialTheme.typography.bodySmall,
                            color = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.7f)
                        )
                    }
                    IconButton(onClick = { deleteComment(commentWithDate) }) {
                        Icon(
                            imageVector = Icons.Default.Delete,
                            contentDescription = "Delete Comment",
                            tint = MaterialTheme.colorScheme.error
                        )
                    }
                }
                Divider(
                    color = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.3f),
                    thickness = 1.dp,
                    modifier = Modifier.padding(vertical = 4.dp)
                )
            }
        }
    }
}

@Composable
fun MonthCalendarView(
    firstDayOfMonth: LocalDate,
    daysInMonth: Int,
    navController: NavHostController
) {
    val today = LocalDate.now()
    val daysOfWeek = listOf("Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat")

    val startDayOfWeek = firstDayOfMonth.dayOfWeek.value
    val offset = if (startDayOfWeek == 7) 0 else startDayOfWeek

    Column(modifier = Modifier.padding(8.dp)) {
        Text(
            text = "${
                firstDayOfMonth.month.getDisplayName(
                    TextStyle.FULL,
                    Locale.getDefault()
                )
            } ${firstDayOfMonth.year}",
            style = MaterialTheme.typography.headlineMedium,
            modifier = Modifier.align(Alignment.CenterHorizontally)
        )
        Spacer(modifier = Modifier.height(16.dp))

        Row(modifier = Modifier.fillMaxWidth()) {
            for (dayName in daysOfWeek) {
                Box(
                    contentAlignment = Alignment.Center,
                    modifier = Modifier
                        .weight(1f)
                        .padding(4.dp)
                ) {
                    Text(text = dayName, fontWeight = FontWeight.Bold)
                }
            }
        }

        val totalCells = (daysInMonth + offset) + (7 - (daysInMonth + offset) % 7)
        for (i in 0 until totalCells step 7) {
            Row(modifier = Modifier.fillMaxWidth()) {
                for (j in 0..6) {
                    val dayIndex = i + j - offset + 1
                    if (dayIndex in 1..daysInMonth) {
                        val date = firstDayOfMonth.plusDays(dayIndex.toLong() - 1)
                        val isClickable = isPastOrToday(date, today)

                        val backgroundColor = when {
                            date.isBefore(today) || date.isEqual(today) -> MaterialTheme.colorScheme.primary.copy(
                                alpha = 0.7f
                            )
                            else -> MaterialTheme.colorScheme.primary.copy(alpha = 0.3f) // Lighter for future days
                        }
                        val textColor =
                            if (isDarkThemeGlobal == 1) Color.White else Color.Black // Adjust for theme

                        Box(
                            contentAlignment = Alignment.Center,
                            modifier = Modifier
                                .weight(1f)
                                .padding(4.dp)
                                .clickable(enabled = isClickable) { navController.navigate("day_detail_screen/$dayIndex") }
                                .background(backgroundColor)
                                .border(1.dp, backgroundColor, RoundedCornerShape(4.dp))
                        ) {
                            Text(
                                text = dayIndex.toString(),
                                textAlign = TextAlign.Center,
                                color = textColor
                            )
                        }
                    } else {
                        Spacer(modifier = Modifier.weight(1f).padding(4.dp))
                    }
                }
            }
        }
    }
}


@Preview(showBackground = true)
@Composable
fun InspirationAppPreview() {
    Assignment2Theme {
        val navController = rememberNavController()
        NavigationGraph(navController = navController, context = null)
    }
}