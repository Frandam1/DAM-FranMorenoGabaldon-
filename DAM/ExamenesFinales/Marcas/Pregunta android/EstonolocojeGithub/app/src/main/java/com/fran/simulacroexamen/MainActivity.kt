package com.fran.simulacroexamen

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.webkit.WebView

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        val url = "file:///android_asset/index.html"
        val miSimulacro: WebView = findViewById(R.id.simulacro)
        miSimulacro.loadUrl(url)
        val ajustesVisorWeb = miSimulacro.getSettings()
        ajustesVisorWeb.javaScriptEnabled = true
    }
}