package com.example.assgnment_1

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.width
import androidx.compose.material3.Button
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateListOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            MaterialTheme {
                Surface(
                    modifier = Modifier.fillMaxSize(),
                    color = MaterialTheme.colorScheme.background
                ) {
                    DiceRollerApp()
                }
            }
        }
    }
}

@Composable
fun DiceRollerApp() {
    var selectedDice = remember { mutableStateListOf<Pair<String, Int>>() }
    val diceTypes = listOf("D4", "D6", "D8", "D10", "D12", "D20")
    var result by remember { mutableStateOf("") }
    var resetTrigger by remember { mutableStateOf(false) }

    Column(
        modifier = Modifier
            .fillMaxSize()
            .padding(16.dp),
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.Center
    ) {
        diceTypes.forEach { diceType ->
            DiceSelector(diceType, selectedDice, resetTrigger)
        }

        Spacer(modifier = Modifier.height(16.dp))

        Row {
            Button(onClick = { result = rollMultipleDice(selectedDice) }) {
                Text("Roll")
            }

            Spacer(modifier = Modifier.width(8.dp))

            Button(onClick = {
                result = ""
                selectedDice.clear()
                resetTrigger = !resetTrigger  // Toggle the reset trigger
            }) {
                Text("Reset")
            }
        }

        Spacer(modifier = Modifier.height(16.dp))

        Text("Result: $result", style = MaterialTheme.typography.bodyLarge)
    }
}



@Composable
fun DiceSelector(diceType: String, selectedDice: MutableList<Pair<String, Int>>, resetTrigger: Boolean) {
    var count by remember { mutableStateOf(0) }

    // React to the reset trigger
    LaunchedEffect(resetTrigger) {
        count = 0
    }

    Row(
        verticalAlignment = Alignment.CenterVertically,
        horizontalArrangement = Arrangement.Center,
        modifier = Modifier.padding(vertical = 4.dp)
    ) {
        Button(onClick = { if (count > 0) count-- }) {
            Text("-")
        }
        Text("$count x $diceType", Modifier.padding(horizontal = 8.dp))
        Button(onClick = { count++ }) {
            Text("+")
        }

        // Update the selectedDice list
        LaunchedEffect(count) {
            selectedDice.removeAll { it.first == diceType }
            if (count > 0) {
                selectedDice.add(Pair(diceType, count))
            }
        }
    }
}


fun resetDiceCounts(diceTypes: List<String>, selectedDice: MutableList<Pair<String, Int>>, resetCounts: (String) -> Unit) {
    selectedDice.clear()
    diceTypes.forEach { diceType ->
        resetCounts(diceType)
    }
}


fun rollMultipleDice(diceList: List<Pair<String, Int>>): String {
    return diceList.joinToString(", ") { (diceType, count) ->
        (1..count).joinToString(" & ") { rollDice(diceType) }
    }
}

fun rollDice(diceType: String): String {
    val range = when (diceType) {
        "D4" -> 1..4
        "D6" -> 1..6
        "D8" -> 1..8
        "D10" -> 1..10
        "D12" -> 1..12
        "D20" -> 1..20
        else -> 1..6
    }
    return range.random().toString()
}

@Preview(showBackground = true)
@Composable
fun DefaultPreview() {
    MaterialTheme {
        DiceRollerApp()
    }
}