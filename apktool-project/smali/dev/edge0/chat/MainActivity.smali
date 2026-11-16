.class public Ldev/edge0/chat/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"

# interfaces
.implements Ldev/edge0/chat/Edge0Engine$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/edge0/chat/MainActivity$Bridge;
    }
.end annotation


# instance fields
.field private engine:Ldev/edge0/chat/Edge0Engine;

.field private engineFallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private enginePath:Ljava/lang/String;

.field private volatile importCancelled:Z

.field private webView:Landroid/webkit/WebView;


# direct methods
.method static bridge synthetic -$$Nest$fgetengine(Ldev/edge0/chat/MainActivity;)Ldev/edge0/chat/Edge0Engine;
    .locals 0

    iget-object p0, p0, Ldev/edge0/chat/MainActivity;->engine:Ldev/edge0/chat/Edge0Engine;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetengineFallbacks(Ldev/edge0/chat/MainActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Ldev/edge0/chat/MainActivity;->engineFallbacks:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetenginePath(Ldev/edge0/chat/MainActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ldev/edge0/chat/MainActivity;->enginePath:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetimportCancelled(Ldev/edge0/chat/MainActivity;)Z
    .locals 0

    iget-boolean p0, p0, Ldev/edge0/chat/MainActivity;->importCancelled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputenginePath(Ldev/edge0/chat/MainActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ldev/edge0/chat/MainActivity;->enginePath:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputimportCancelled(Ldev/edge0/chat/MainActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Ldev/edge0/chat/MainActivity;->importCancelled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mjs(Ldev/edge0/chat/MainActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/edge0/chat/MainActivity;->js(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smjson(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Ldev/edge0/chat/MainActivity;->json(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Ldev/edge0/chat/MainActivity;->enginePath:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldev/edge0/chat/MainActivity;->engineFallbacks:Ljava/util/List;

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Ldev/edge0/chat/MainActivity;->importCancelled:Z

    return-void
.end method

.method private copyAssetExec(Ljava/io/File;Ljava/io/File;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 26
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_3

    .line 27
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long p0, v2, v4

    if-nez p0, :cond_1

    .line 28
    invoke-virtual {p2, v0, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    return-void

    .line 31
    :cond_1
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 32
    :try_start_0
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/high16 v2, 0x10000

    .line 33
    :try_start_1
    new-array v2, v2, [B

    .line 35
    :goto_0
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {p1, v2, v1, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 36
    :cond_2
    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 39
    invoke-virtual {p2, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 40
    invoke-virtual {p2, v0, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    return-void

    :catchall_0
    move-exception p2

    .line 31
    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p1

    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1

    :cond_3
    :goto_3
    return-void
.end method

.method private js(Ljava/lang/String;)V
    .locals 1

    .line 119
    new-instance v0, Ldev/edge0/chat/MainActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Ldev/edge0/chat/MainActivity$$ExternalSyntheticLambda0;-><init>(Ldev/edge0/chat/MainActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ldev/edge0/chat/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static json(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 123
    invoke-static {p0}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method synthetic lambda$js$0$dev-edge0-chat-MainActivity(Ljava/lang/String;)V
    .locals 1

    .line 119
    iget-object p0, p0, Ldev/edge0/chat/MainActivity;->webView:Landroid/webkit/WebView;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public onAnswerChunk(Ljava/lang/String;)V
    .locals 2

    .line 108
    invoke-static {p1}, Ldev/edge0/chat/MainActivity;->json(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "window.__edge0.onAnswerChunk("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ldev/edge0/chat/MainActivity;->js(Ljava/lang/String;)V

    return-void
.end method

.method public onAnswerEnd()V
    .locals 1

    .line 109
    const-string v0, "window.__edge0.onAnswerEnd()"

    invoke-direct {p0, v0}, Ldev/edge0/chat/MainActivity;->js(Ljava/lang/String;)V

    return-void
.end method

.method public onAnswerStart()V
    .locals 1

    .line 107
    const-string v0, "window.__edge0.onAnswerStart()"

    invoke-direct {p0, v0}, Ldev/edge0/chat/MainActivity;->js(Ljava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "package:"

    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    new-instance p1, Ljava/io/File;

    invoke-virtual {p0}, Ldev/edge0/chat/MainActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    new-instance v1, Ljava/io/File;

    const-string v2, "libedge0engine.so"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 55
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 56
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ldev/edge0/chat/MainActivity;->enginePath:Ljava/lang/String;

    .line 59
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ldev/edge0/chat/MainActivity;->engineFallbacks:Ljava/util/List;

    .line 61
    :try_start_0
    new-instance p1, Ljava/io/File;

    invoke-virtual {p0}, Ldev/edge0/chat/MainActivity;->getCodeCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-direct {p1, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 62
    invoke-direct {p0, v1, p1}, Ldev/edge0/chat/MainActivity;->copyAssetExec(Ljava/io/File;Ljava/io/File;)V

    .line 63
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Ldev/edge0/chat/MainActivity;->engineFallbacks:Ljava/util/List;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :catch_0
    :cond_1
    :try_start_1
    new-instance p1, Ljava/io/File;

    invoke-virtual {p0}, Ldev/edge0/chat/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-direct {p1, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 67
    invoke-direct {p0, v1, p1}, Ldev/edge0/chat/MainActivity;->copyAssetExec(Ljava/io/File;Ljava/io/File;)V

    .line 68
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Ldev/edge0/chat/MainActivity;->engineFallbacks:Ljava/util/List;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 71
    :catch_1
    :cond_2
    new-instance p1, Ldev/edge0/chat/Edge0Engine;

    invoke-direct {p1, p0}, Ldev/edge0/chat/Edge0Engine;-><init>(Ldev/edge0/chat/Edge0Engine$Listener;)V

    iput-object p1, p0, Ldev/edge0/chat/MainActivity;->engine:Ldev/edge0/chat/Edge0Engine;

    .line 73
    new-instance p1, Landroid/webkit/WebView;

    invoke-direct {p1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Ldev/edge0/chat/MainActivity;->webView:Landroid/webkit/WebView;

    .line 74
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v1, 0x1

    .line 75
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 76
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 77
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 78
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 79
    iget-object p1, p0, Ldev/edge0/chat/MainActivity;->webView:Landroid/webkit/WebView;

    new-instance v2, Landroid/webkit/WebViewClient;

    invoke-direct {v2}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 80
    iget-object p1, p0, Ldev/edge0/chat/MainActivity;->webView:Landroid/webkit/WebView;

    new-instance v2, Landroid/webkit/WebChromeClient;

    invoke-direct {v2}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 81
    iget-object p1, p0, Ldev/edge0/chat/MainActivity;->webView:Landroid/webkit/WebView;

    new-instance v2, Ldev/edge0/chat/MainActivity$Bridge;

    invoke-direct {v2, p0}, Ldev/edge0/chat/MainActivity$Bridge;-><init>(Ldev/edge0/chat/MainActivity;)V

    const-string v3, "edge0"

    invoke-virtual {p1, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iget-object p1, p0, Ldev/edge0/chat/MainActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p0, p1}, Ldev/edge0/chat/MainActivity;->setContentView(Landroid/view/View;)V

    .line 83
    iget-object p1, p0, Ldev/edge0/chat/MainActivity;->webView:Landroid/webkit/WebView;

    const-string v2, "file:///android_asset/www/index.html"

    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 85
    const-string p1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p0, p1}, Ldev/edge0/chat/MainActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3

    .line 87
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Ldev/edge0/chat/MainActivity;->requestPermissions([Ljava/lang/String;I)V

    .line 91
    :cond_3
    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result p1

    if-nez p1, :cond_4

    .line 93
    :try_start_2
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION"

    .line 95
    invoke-virtual {p0}, Ldev/edge0/chat/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 96
    invoke-virtual {p0, p1}, Ldev/edge0/chat/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 99
    :catch_2
    :try_start_3
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.MANAGE_ALL_FILES_ACCESS_PERMISSION"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ldev/edge0/chat/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :cond_4
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 336
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 337
    iget-object v0, p0, Ldev/edge0/chat/MainActivity;->engine:Ldev/edge0/chat/Edge0Engine;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ldev/edge0/chat/Edge0Engine;->shutdown()V

    .line 338
    :cond_0
    iget-object p0, p0, Ldev/edge0/chat/MainActivity;->webView:Landroid/webkit/WebView;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/webkit/WebView;->destroy()V

    :cond_1
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 2

    .line 113
    invoke-static {p1}, Ldev/edge0/chat/MainActivity;->json(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "window.__edge0.onError("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ldev/edge0/chat/MainActivity;->js(Ljava/lang/String;)V

    return-void
.end method

.method public onState(Ldev/edge0/chat/Edge0Engine$State;)V
    .locals 2

    .line 115
    invoke-virtual {p1}, Ldev/edge0/chat/Edge0Engine$State;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ldev/edge0/chat/MainActivity;->json(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "window.__edge0.onState("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ldev/edge0/chat/MainActivity;->js(Ljava/lang/String;)V

    return-void
.end method

.method public onThinkingChunk(Ljava/lang/String;)V
    .locals 2

    .line 111
    invoke-static {p1}, Ldev/edge0/chat/MainActivity;->json(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "window.__edge0.onThinkingChunk("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ldev/edge0/chat/MainActivity;->js(Ljava/lang/String;)V

    return-void
.end method

.method public onThinkingEnd()V
    .locals 1

    .line 112
    const-string v0, "window.__edge0.onThinkingEnd()"

    invoke-direct {p0, v0}, Ldev/edge0/chat/MainActivity;->js(Ljava/lang/String;)V

    return-void
.end method

.method public onThinkingStart()V
    .locals 1

    .line 110
    const-string v0, "window.__edge0.onThinkingStart()"

    invoke-direct {p0, v0}, Ldev/edge0/chat/MainActivity;->js(Ljava/lang/String;)V

    return-void
.end method
