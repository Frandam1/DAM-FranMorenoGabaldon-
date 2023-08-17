package com.fran.ram

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.webkit.WebView

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        val url = "file:///android_asset/index.html"
        val miVistaWeb: WebView = findViewById(R.id.vistaWeb)
        miVistaWeb.loadUrl(url)
        val ajustesVisorWeb = miVistaWeb.getSettings()
        ajustesVisorWeb.javaScriptEnabled = true
    }
}