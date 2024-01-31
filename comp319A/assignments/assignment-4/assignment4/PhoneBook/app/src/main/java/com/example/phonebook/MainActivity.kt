    package com.example.phonebook

    import android.os.Bundle
    import androidx.activity.ComponentActivity
    import androidx.activity.compose.setContent
    import androidx.compose.foundation.ExperimentalFoundationApi
    import androidx.compose.foundation.Image
    import androidx.compose.foundation.background
    import androidx.compose.foundation.clickable
    import androidx.compose.foundation.lazy.LazyColumn
    import androidx.compose.foundation.lazy.items
    import androidx.compose.material.icons.Icons
    import androidx.compose.material.icons.filled.Add
    import androidx.compose.material.icons.filled.Delete
    import androidx.compose.material.icons.filled.Favorite
    import androidx.compose.material.icons.filled.FavoriteBorder
    import androidx.compose.runtime.livedata.observeAsState
    import androidx.compose.ui.Alignment
    import androidx.compose.ui.Modifier
    import androidx.compose.ui.graphics.painter.Painter
    import androidx.compose.ui.text.font.FontWeight
    import androidx.compose.ui.unit.dp
    import androidx.lifecycle.ViewModelProvider
    import androidx.navigation.compose.NavHost
    import androidx.navigation.compose.composable
    import androidx.navigation.NavHostController
    import androidx.navigation.compose.rememberNavController
    import coil.compose.rememberAsyncImagePainter
    import com.example.phonebook.ui.theme.PhoneBookTheme
    import androidx.compose.foundation.layout.Column
    import androidx.compose.foundation.layout.Row
    import androidx.compose.foundation.layout.Spacer
    import androidx.compose.foundation.layout.fillMaxSize
    import androidx.compose.foundation.layout.fillMaxWidth
    import androidx.compose.foundation.layout.height
    import androidx.compose.foundation.layout.padding
    import androidx.compose.foundation.layout.size
    import androidx.compose.foundation.layout.width
    import androidx.compose.foundation.layout.wrapContentSize
    import androidx.compose.foundation.text.KeyboardOptions
    import androidx.compose.material3.Button
    import androidx.compose.material3.ExperimentalMaterial3Api
    import androidx.compose.material3.Icon
    import androidx.compose.material3.IconButton
    import androidx.compose.material3.MaterialTheme
    import androidx.compose.material3.Scaffold
    import androidx.compose.material3.Surface
    import androidx.compose.material3.Text
    import androidx.compose.material3.TextField
    import androidx.compose.material3.TopAppBar
    import androidx.compose.runtime.Composable
    import androidx.compose.runtime.getValue
    import androidx.compose.runtime.mutableStateOf
    import androidx.compose.runtime.remember
    import androidx.compose.runtime.setValue
    import androidx.compose.ui.platform.LocalContext
    import androidx.compose.ui.text.input.KeyboardType
    import androidx.room.Entity
    import androidx.room.PrimaryKey
    import coil.request.ImageRequest

    @Entity(tableName = "contacts_table")
    data class Contact(
        @PrimaryKey(autoGenerate = true)
        val id: Long = 0,
        val name: String,
        val phoneNumber: String,
        val imageUrl: String,
        val isFavorite: Boolean = false
    )

    class MainActivity : ComponentActivity() {
        override fun onCreate(savedInstanceState: Bundle?) {
            super.onCreate(savedInstanceState)
            setContent {
                PhoneBookTheme {
                    val navController = rememberNavController()
                    val appDatabase = AppDatabase.getDatabase(this)
                    val contactDao = appDatabase.contactDao()
                    val contactViewModel = ViewModelProvider(
                        this,
                        ViewModelFactory(contactDao)
                    ).get(ContactViewModel::class.java)
                    PhoneBookNavHost(navController, contactViewModel)
                }
            }
        }
    }


    @Composable
    fun PhoneBookNavHost(navController: NavHostController, contactViewModel: ContactViewModel) {
        NavHost(navController, startDestination = "mainScreen") {
            composable("mainScreen") {
                MainScreen(contactViewModel, navController)
            }
            composable("contactDetail/{contactId}") { backStackEntry ->
                val contactId = backStackEntry.arguments?.getString("contactId")
                ContactDetailScreen(contactId, contactViewModel, navController)
            }

            composable("addContact") {
                AddContactScreen(contactViewModel, navController)
            }
            composable("editContact/{contactId}") { backStackEntry ->
                EditContactScreen(
                    contactId = backStackEntry.arguments?.getString("contactId") ?: "",
                    contactViewModel,
                    navController
                )
            }
        }
    }

    @OptIn(ExperimentalMaterial3Api::class, ExperimentalFoundationApi::class)
    @Composable
    fun MainScreen(contactViewModel: ContactViewModel, navController: NavHostController) {
        val contacts by contactViewModel.contacts.observeAsState(listOf())
        val favoriteContacts = contacts.filter { it.isFavorite }
        val otherContacts = contacts.filterNot { it.isFavorite }.groupBy { it.name.firstOrNull()?.uppercase() ?: "#" }

        Scaffold(
            topBar = {
                TopAppBar(
                    title = { Text("Phone Book", fontWeight = FontWeight.Bold) },
                    actions = {
                        IconButton(onClick = { navController.navigate("addContact") }) {
                            Icon(Icons.Filled.Add, contentDescription = "Add Contact")
                        }
                    }
                )
            },
            content = { innerPadding ->
                LazyColumn(modifier = Modifier.padding(innerPadding)) {
                    if (favoriteContacts.isNotEmpty()) {
                        stickyHeader {
                            SectionHeader(text = "Favorites")
                        }
                        items(favoriteContacts) { contact ->
                            ContactListItem(
                                contact = contact,
                                onClick = { navController.navigate("contactDetail/${contact.id}") },
                                onDelete = { contactViewModel.deleteContact(contact) }
                            )
                        }
                    }
                    otherContacts.forEach { (initial, contactsForInitial) ->
                        stickyHeader {
                            SectionHeader(text = initial)
                        }
                        items(contactsForInitial) { contact ->
                            ContactListItem(
                                contact = contact,
                                onClick = { navController.navigate("contactDetail/${contact.id}") },
                                onDelete = { contactViewModel.deleteContact(contact) }
                            )
                        }
                    }
                }
            }
        )
    }

    @Composable
    fun SectionHeader(text: String) {
        Text(
            text = text,
            fontWeight = FontWeight.Bold,
            modifier = Modifier
                .fillMaxWidth()
                .padding(8.dp)
                .background(MaterialTheme.colorScheme.surface)
        )
    }

    @Composable
    fun ContactListItem(contact: Contact, onClick: () -> Unit, onDelete: () -> Unit) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .clickable(onClick = onClick)
                .padding(8.dp),
            verticalAlignment = Alignment.CenterVertically
        ) {
            val image: Painter = // Placeholder image
                rememberAsyncImagePainter(
                    ImageRequest.Builder(LocalContext.current).data(data = contact.imageUrl).apply(block = fun ImageRequest.Builder.() {
                        placeholder(R.drawable.ic_launcher_foreground) // Placeholder image
                    }).build()
                )
            Image(
                painter = image,
                contentDescription = "Profile Picture",
                modifier = Modifier.size(40.dp)
            )
            Spacer(modifier = Modifier.width(16.dp))
            Text(text = contact.name)
            Spacer(Modifier.weight(1f))

            IconButton(onClick = onDelete) {
                Icon(Icons.Default.Delete, contentDescription = "Delete Contact")
            }
        }
    }

    @Composable
    fun ContactDetailScreen(contactId: String?, contactViewModel: ContactViewModel, navController: NavHostController) {
        val contacts by contactViewModel.contacts.observeAsState(listOf())
        val contact = contacts.find { it.id.toString() == contactId }

        Surface(
            modifier = Modifier.fillMaxSize(),
            color = MaterialTheme.colorScheme.background
        ) {
            contact?.let {
                Column(
                    modifier = Modifier
                        .padding(16.dp)
                        .fillMaxWidth(),
                    horizontalAlignment = Alignment.CenterHorizontally
                ) {
                    Spacer(modifier = Modifier.height(16.dp))

                    // Contact image
                    val image: Painter = rememberAsyncImagePainter(it.imageUrl)
                    Image(
                        painter = image,
                        contentDescription = "Profile Picture",
                        modifier = Modifier.size(150.dp)
                    )

                    Spacer(modifier = Modifier.height(16.dp))

                    Text(
                        text = it.name,
                        fontFamily = fontFamily,
                        color = MaterialTheme.colorScheme.onSurface
                    )

                    Spacer(modifier = Modifier.height(8.dp))

                    Text(
                        text = "Phone: ${it.phoneNumber}",
                        fontFamily = fontFamily,
                        color = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.7f)
                    )

                    Spacer(modifier = Modifier.height(16.dp))

                    Row(
                        modifier = Modifier
                            .clickable {
                                contactViewModel.toggleFavorite(it)
                            }
                            .padding(8.dp),
                        verticalAlignment = Alignment.CenterVertically
                    ) {
                        Icon(
                            imageVector = if (it.isFavorite) Icons.Filled.Favorite else Icons.Filled.FavoriteBorder,
                            contentDescription = "Toggle Favorite",
                            tint = if (it.isFavorite) MaterialTheme.colorScheme.primary else MaterialTheme.colorScheme.onSurface
                        )
                        Spacer(modifier = Modifier.width(8.dp))
                        Text("Favorite", fontFamily = fontFamily)
                    }
                    Button(onClick = {
                        navController.navigate("editContact/$contactId")
                    }) {
                        Text("Edit Contact")
                    }
                }
            }
        }
    }



    @OptIn(ExperimentalMaterial3Api::class)
    @Composable
    fun AddContactScreen(contactViewModel: ContactViewModel, navController: NavHostController) {
        var firstName by remember { mutableStateOf("") }
        var lastName by remember { mutableStateOf("") }
        var phoneNumber by remember { mutableStateOf("") }

        Column(
            modifier = Modifier
                .fillMaxSize()
                .wrapContentSize(Alignment.Center)
                .padding(16.dp)
        ) {
            TextField(
                value = firstName,
                onValueChange = { firstName = it },
                label = { Text("First Name") }
            )
            Spacer(modifier = Modifier.height(8.dp))

            TextField(
                value = lastName,
                onValueChange = { lastName = it },
                label = { Text("Last Name") }
            )
            Spacer(modifier = Modifier.height(8.dp))

            TextField(
                value = phoneNumber,
                onValueChange = {
                    if (it.all { char -> char.isDigit() }) {
                        phoneNumber = it
                    }
                },
                label = { Text("Phone Number") },
                keyboardOptions = KeyboardOptions.Default.copy(keyboardType = KeyboardType.Number)
            )
            Spacer(modifier = Modifier.height(16.dp))

            Button(onClick = {
                val fullName = "$firstName $lastName"
                val imageUrl = generateRoboHashUrl("$firstName$lastName")

                val newContact = Contact(
                    name = fullName,
                    phoneNumber = phoneNumber,
                    imageUrl = imageUrl
                )

                val defaultImageUrl = "\"https://api.multiavatar.com/$fullName.png\""
                contactViewModel.addContact(newContact.copy(imageUrl = defaultImageUrl))

                navController.popBackStack()
            }) {
                Text("Add Contact")
            }
        }
    }

    @OptIn(ExperimentalMaterial3Api::class)
    @Composable
    fun EditContactScreen(contactId: String, contactViewModel: ContactViewModel, navController: NavHostController) {
        val contacts by contactViewModel.contacts.observeAsState(listOf())
        val contactToEdit = contacts.find { it.id.toString() == contactId }

        var firstName by remember { mutableStateOf(contactToEdit?.name?.substringBefore(" ") ?: "") }
        var lastName by remember { mutableStateOf(contactToEdit?.name?.substringAfter(" ") ?: "") }
        var phoneNumber by remember { mutableStateOf(contactToEdit?.phoneNumber ?: "") }

        Column(modifier = Modifier.padding(16.dp)) {
            TextField(
                value = firstName,
                onValueChange = { firstName = it },
                label = { Text("First Name") }
            )
            Spacer(modifier = Modifier.height(8.dp))

            TextField(
                value = lastName,
                onValueChange = { lastName = it },
                label = { Text("Last Name") }
            )
            Spacer(modifier = Modifier.height(8.dp))

            TextField(
                value = phoneNumber,
                onValueChange = {
                    if (it.all { char -> char.isDigit() }) {
                        phoneNumber = it
                    }
                },
                label = { Text("Phone Number") },
                keyboardOptions = KeyboardOptions.Default.copy(keyboardType = KeyboardType.Number)
            )
            Spacer(modifier = Modifier.height(16.dp))

            Button(onClick = {
                val fullName = "$firstName $lastName"
                val imageUrl = generateRoboHashUrl("$firstName $lastName")

                val updatedContact = contactToEdit?.copy(
                    name = fullName,
                    phoneNumber = phoneNumber,
                    imageUrl = imageUrl
                )

                val defaultImageUrl = "https://example.com/default-image.png"
                updatedContact?.let {
                    contactViewModel.updateContact(it.copy(imageUrl = defaultImageUrl))
                    navController.popBackStack()
                }
            }) {
                Text("Save Changes")
            }
        }
    }

    fun generateRoboHashUrl(fullName: String): String {
        return "https://api.multiavatar.com/$fullName.png"
    }




