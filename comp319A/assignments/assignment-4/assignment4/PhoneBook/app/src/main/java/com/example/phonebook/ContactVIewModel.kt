package com.example.phonebook

import android.content.Context
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.font.FontStyle
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.googlefonts.Font
import androidx.compose.ui.text.googlefonts.GoogleFont
import androidx.lifecycle.LiveData
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import androidx.lifecycle.ViewModelProvider
import androidx.lifecycle.viewModelScope
import androidx.room.Dao
import androidx.room.Database
import androidx.room.Delete
import androidx.room.Insert
import androidx.room.Query
import androidx.room.Room
import androidx.room.RoomDatabase
import androidx.room.Update
import androidx.room.migration.Migration
import androidx.sqlite.db.SupportSQLiteDatabase
import kotlinx.coroutines.launch

@Dao
interface ContactDao {

    @Insert
    suspend fun insert(contact: Contact)

    @Query("SELECT * FROM contacts_table")
    fun getAll(): LiveData<List<Contact>>

    @Delete
    suspend fun deleteUser(contact : Contact)

    @Update
    suspend fun update(contact: Contact)

}

class ContactViewModel(private val contactDao: ContactDao) : ViewModel() {

    private val _contacts = MutableLiveData<List<Contact>>()
    val contacts: LiveData<List<Contact>> = contactDao.getAll()

    init {
        loadContacts()
    }

    fun addContact(contact: Contact) {
        viewModelScope.launch {
            contactDao.insert(contact)
        }
    }

    fun deleteContact (contact : Contact) {
        viewModelScope.launch {
            contactDao.deleteUser(contact)
        }
    }

    private fun loadContacts() {
        viewModelScope.launch {
            contactDao.getAll().observeForever {
                _contacts.value = it
            }
        }
    }

    fun updateContact(contact: Contact) {
        viewModelScope.launch {
            contactDao.update(contact)
            loadContacts()
        }
    }



    fun toggleFavorite(contact: Contact) {
        viewModelScope.launch {
            val updatedContact = contact.copy(isFavorite = !contact.isFavorite)
            contactDao.update(updatedContact)
            loadContacts()
        }
    }

}

class ViewModelFactory(private val contactDao: ContactDao) : ViewModelProvider.Factory {
    override fun <T : ViewModel> create(modelClass: Class<T>): T {
        if (modelClass.isAssignableFrom(ContactViewModel::class.java)) {
            return ContactViewModel(contactDao) as T
        }
        throw IllegalArgumentException("Unknown ViewModel class")
    }
}

@Database(entities = [Contact::class], version = 2)
abstract class AppDatabase : RoomDatabase() {
    abstract fun contactDao(): ContactDao

    companion object {

        @Volatile
        private var INSTANCE: AppDatabase? = null

        fun getDatabase(context: Context): AppDatabase {
            return INSTANCE ?: synchronized(this) {
                val instance = Room.databaseBuilder(
                    context.applicationContext,
                    AppDatabase::class.java,
                    "contact_database"
                )
                    .addMigrations(MIGRATION_1_2)
                    .build()
                INSTANCE = instance
                instance
            }
        }
    }
}


val MIGRATION_1_2: Migration = object : Migration(1, 2) {
    override fun migrate(database: SupportSQLiteDatabase) {
        // Check if the column already exists before attempting to add it
        val cursor = database.query("SELECT * FROM contacts_table")
        val isFavoriteColumnIndex = cursor.getColumnIndex("isFavorite")

        if (isFavoriteColumnIndex == -1) {
            database.execSQL("ALTER TABLE contacts_table ADD COLUMN isFavorite INTEGER NOT NULL DEFAULT 0")
        }

        cursor.close()
    }
}



val provider = GoogleFont.Provider(
    providerAuthority = "com.google.android.gms.fonts",
    providerPackage = "com.google.android.gms",
    certificates = R.array.com_google_android_gms_fonts_certs
)

val fontName = GoogleFont("Roboto")

val fontFamily = FontFamily(
    Font(
        googleFont = fontName,
        fontProvider = provider,
        weight = FontWeight.Normal,
        style = FontStyle.Normal
    )
)
