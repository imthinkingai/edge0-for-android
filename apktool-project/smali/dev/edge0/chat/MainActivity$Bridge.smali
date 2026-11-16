.class public Ldev/edge0/chat/MainActivity$Bridge;
.super Ljava/lang/Object;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/edge0/chat/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Bridge"
.end annotation


# instance fields
.field final synthetic this$0:Ldev/edge0/chat/MainActivity;


# direct methods
.method public constructor <init>(Ldev/edge0/chat/MainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 126
    iput-object p1, p0, Ldev/edge0/chat/MainActivity$Bridge;->this$0:Ldev/edge0/chat/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private doImportModel(Ljava/lang/String;)Ljava/lang/String;
    .locals 25

    move-object/from16 v0, p0

    .line 224
    new-instance v1, Ljava/io/File;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 225
    new-instance v2, Ljava/io/File;

    iget-object v3, v0, Ldev/edge0/chat/MainActivity$Bridge;->this$0:Ldev/edge0/chat/MainActivity;

    invoke-virtual {v3}, Ldev/edge0/chat/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "models/edge0-assets-35b"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 226
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    const-string v4, ""

    if-nez v3, :cond_0

    return-object v4

    .line 227
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_1

    return-object v4

    .line 228
    :cond_1
    iget-object v3, v0, Ldev/edge0/chat/MainActivity$Bridge;->this$0:Ldev/edge0/chat/MainActivity;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Ldev/edge0/chat/MainActivity;->-$$Nest$fputimportCancelled(Ldev/edge0/chat/MainActivity;Z)V

    .line 229
    const-string v14, "prerouter.gguf"

    const-string v15, "base.gguf"

    const-string v6, "model.json"

    const-string v7, "assets.tsv"

    const-string v8, "provenance.json"

    const-string v9, "tokenizer.json"

    const-string v10, "chat_template.jinja"

    const-string v11, "generation_config.json"

    const-string v12, "config.json"

    const-string v13, "lora.gguf"

    filled-new-array/range {v6 .. v15}, [Ljava/lang/String;

    move-result-object v3

    move v6, v5

    :goto_0
    const/16 v7, 0xa

    if-ge v6, v7, :cond_9

    .line 232
    aget-object v7, v3, v6

    .line 233
    iget-object v8, v0, Ldev/edge0/chat/MainActivity$Bridge;->this$0:Ldev/edge0/chat/MainActivity;

    invoke-static {v8}, Ldev/edge0/chat/MainActivity;->-$$Nest$fgetimportCancelled(Ldev/edge0/chat/MainActivity;)Z

    move-result v8

    if-eqz v8, :cond_2

    return-object v4

    .line 234
    :cond_2
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 235
    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result v9

    if-nez v9, :cond_3

    :goto_1
    move-object/from16 v19, v1

    move-object/from16 v20, v2

    move-object/from16 v18, v3

    move v8, v6

    goto/16 :goto_5

    .line 236
    :cond_3
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v2, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 237
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-nez v10, :cond_4

    goto :goto_1

    .line 238
    :cond_4
    :try_start_0
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    :try_start_1
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/high16 v9, 0x100000

    .line 240
    :try_start_2
    new-array v9, v9, [B

    .line 241
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v12

    const-wide/16 v16, 0x0

    .line 243
    :goto_2
    invoke-virtual {v10, v9}, Ljava/io/InputStream;->read([B)I

    move-result v8

    if-lez v8, :cond_8

    .line 244
    iget-object v14, v0, Ldev/edge0/chat/MainActivity$Bridge;->this$0:Ldev/edge0/chat/MainActivity;

    invoke-static {v14}, Ldev/edge0/chat/MainActivity;->-$$Nest$fgetimportCancelled(Ldev/edge0/chat/MainActivity;)Z

    move-result v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v14, :cond_5

    .line 256
    :try_start_3
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return-object v4

    .line 245
    :cond_5
    :try_start_5
    invoke-virtual {v11, v9, v5, v8}, Ljava/io/FileOutputStream;->write([BII)V

    int-to-long v14, v8

    add-long v14, v16, v14

    const-wide/32 v16, 0xc800000

    .line 247
    rem-long v16, v14, v16

    const-wide/32 v20, 0x100000

    cmp-long v8, v16, v20

    if-gez v8, :cond_7

    const-wide/16 v16, 0x0

    cmp-long v8, v12, v16

    if-lez v8, :cond_6

    const-wide/16 v18, 0x64

    mul-long v18, v18, v14

    move v8, v6

    .line 248
    div-long v5, v18, v12

    long-to-int v5, v5

    goto :goto_3

    :cond_6
    move v8, v6

    const/4 v5, 0x0

    .line 250
    :goto_3
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v18, v3

    const-string v3, "%.0f/%.0f MB"

    move-object/from16 v19, v1

    move-object/from16 v20, v2

    long-to-double v1, v14

    const-wide/high16 v21, 0x4130000000000000L    # 1048576.0

    div-double v1, v1, v21

    .line 251
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    move-wide/from16 v23, v14

    long-to-double v14, v12

    div-double v14, v14, v21

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 250
    invoke-static {v6, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 252
    iget-object v2, v0, Ldev/edge0/chat/MainActivity$Bridge;->this$0:Ldev/edge0/chat/MainActivity;

    new-instance v3, Ldev/edge0/chat/MainActivity$Bridge$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0, v7, v5, v1}, Ldev/edge0/chat/MainActivity$Bridge$$ExternalSyntheticLambda2;-><init>(Ldev/edge0/chat/MainActivity$Bridge;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Ldev/edge0/chat/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    :cond_7
    move-object/from16 v19, v1

    move-object/from16 v20, v2

    move-object/from16 v18, v3

    move v8, v6

    move-wide/from16 v23, v14

    const-wide/16 v16, 0x0

    :goto_4
    move v6, v8

    move-object/from16 v3, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-wide/from16 v16, v23

    const/4 v5, 0x0

    goto :goto_2

    :cond_8
    move-object/from16 v19, v1

    move-object/from16 v20, v2

    move-object/from16 v18, v3

    move v8, v6

    .line 256
    :try_start_6
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :goto_5
    add-int/lit8 v6, v8, 0x1

    move-object/from16 v3, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    const/4 v5, 0x0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 238
    :try_start_8
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v2, v0

    :try_start_9
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception v0

    move-object v1, v0

    :try_start_a
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object v2, v0

    :try_start_b
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7
    throw v1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    :catch_0
    return-object v4

    :cond_9
    move-object/from16 v19, v1

    move-object/from16 v20, v2

    .line 261
    const-string v9, "tokenizer.json"

    const-string v10, "chat_template.jinja"

    const-string v5, "model.json"

    const-string v6, "base.gguf"

    const-string v7, "lora.gguf"

    const-string v8, "prerouter.gguf"

    filled-new-array/range {v5 .. v10}, [Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    :goto_8
    const/4 v2, 0x6

    if-ge v5, v2, :cond_d

    .line 263
    aget-object v2, v1, v5

    .line 264
    new-instance v3, Ljava/io/File;

    move-object/from16 v6, v19

    invoke-direct {v3, v6, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 265
    new-instance v7, Ljava/io/File;

    move-object/from16 v8, v20

    invoke-direct {v7, v8, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 266
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v9

    if-nez v9, :cond_a

    goto :goto_9

    .line 267
    :cond_a
    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v9

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v11

    cmp-long v3, v9, v11

    if-eqz v3, :cond_b

    goto :goto_a

    :cond_b
    :goto_9
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v19, v6

    move-object/from16 v20, v8

    goto :goto_8

    .line 269
    :cond_c
    :goto_a
    iget-object v1, v0, Ldev/edge0/chat/MainActivity$Bridge;->this$0:Ldev/edge0/chat/MainActivity;

    new-instance v3, Ldev/edge0/chat/MainActivity$Bridge$$ExternalSyntheticLambda3;

    invoke-direct {v3, v0, v2}, Ldev/edge0/chat/MainActivity$Bridge$$ExternalSyntheticLambda3;-><init>(Ldev/edge0/chat/MainActivity$Bridge;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ldev/edge0/chat/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-object v4

    :cond_d
    move-object/from16 v8, v20

    .line 274
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public cancelImport()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 200
    iget-object p0, p0, Ldev/edge0/chat/MainActivity$Bridge;->this$0:Ldev/edge0/chat/MainActivity;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Ldev/edge0/chat/MainActivity;->-$$Nest$fputimportCancelled(Ldev/edge0/chat/MainActivity;Z)V

    return-void
.end method

.method public defaultModelDir()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 132
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p0

    .line 133
    new-instance v0, Ljava/io/File;

    const-string v1, "Download/edge0-assets-35b"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public deletePrivateModel()Z
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 216
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Ldev/edge0/chat/MainActivity$Bridge;->this$0:Ldev/edge0/chat/MainActivity;

    invoke-virtual {p0}, Ldev/edge0/chat/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "models/edge0-assets-35b"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 217
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 218
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 219
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 220
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0
.end method

.method public diagnose()Ljava/lang/String;
    .locals 9
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "allFilesAccess="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 159
    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\ngetExternalStorageDirectory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/Download/edge0-assets-35b"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/sdcard/Download/edge0-assets-35b"

    const-string v4, "/storage/emulated/0/Download/edge0-assets-35b"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x3

    if-ge v3, v4, :cond_0

    .line 167
    aget-object v4, v2, v3

    .line 168
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 169
    new-instance v6, Ljava/io/File;

    const-string v7, "model.json"

    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 170
    new-instance v7, Ljava/io/File;

    const-string v8, "base.gguf"

    invoke-direct {v7, v5, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 171
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": dir="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " canRead="

    .line 172
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->canRead()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " model.json="

    .line 173
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->canRead()Z

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " base.gguf="

    .line 174
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/io/File;->canRead()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 177
    :cond_0
    const-string v2, "filesDir="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ldev/edge0/chat/MainActivity$Bridge;->this$0:Ldev/edge0/chat/MainActivity;

    invoke-virtual {v2}, Ldev/edge0/chat/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nprivateModelDir="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    new-instance v2, Ljava/io/File;

    iget-object p0, p0, Ldev/edge0/chat/MainActivity$Bridge;->this$0:Ldev/edge0/chat/MainActivity;

    invoke-virtual {p0}, Ldev/edge0/chat/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v3, "models/edge0-assets-35b"

    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 179
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " exists="

    .line 180
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public enginePathInfo()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 321
    iget-object v0, p0, Ldev/edge0/chat/MainActivity$Bridge;->this$0:Ldev/edge0/chat/MainActivity;

    invoke-static {v0}, Ldev/edge0/chat/MainActivity;->-$$Nest$fgetenginePath(Ldev/edge0/chat/MainActivity;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    iget-object p0, p0, Ldev/edge0/chat/MainActivity$Bridge;->this$0:Ldev/edge0/chat/MainActivity;

    invoke-static {p0}, Ldev/edge0/chat/MainActivity;->-$$Nest$fgetenginePath(Ldev/edge0/chat/MainActivity;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public engineReady()Z
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 128
    iget-object p0, p0, Ldev/edge0/chat/MainActivity$Bridge;->this$0:Ldev/edge0/chat/MainActivity;

    invoke-static {p0}, Ldev/edge0/chat/MainActivity;->-$$Nest$fgetenginePath(Ldev/edge0/chat/MainActivity;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public importModel(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 192
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ldev/edge0/chat/MainActivity$Bridge$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Ldev/edge0/chat/MainActivity$Bridge$$ExternalSyntheticLambda1;-><init>(Ldev/edge0/chat/MainActivity$Bridge;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 195
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method synthetic lambda$doImportModel$2$dev-edge0-chat-MainActivity$Bridge(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 252
    iget-object p0, p0, Ldev/edge0/chat/MainActivity$Bridge;->this$0:Ldev/edge0/chat/MainActivity;

    .line 253
    invoke-static {p1}, Ldev/edge0/chat/MainActivity;->-$$Nest$smjson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3}, Ldev/edge0/chat/MainActivity;->-$$Nest$smjson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "window.__edge0ImportProgress("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 252
    invoke-static {p0, p1}, Ldev/edge0/chat/MainActivity;->-$$Nest$mjs(Ldev/edge0/chat/MainActivity;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$doImportModel$3$dev-edge0-chat-MainActivity$Bridge(Ljava/lang/String;)V
    .locals 3

    .line 269
    iget-object p0, p0, Ldev/edge0/chat/MainActivity$Bridge;->this$0:Ldev/edge0/chat/MainActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6821\u9a8c\u5931\u8d25:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 270
    invoke-static {p1}, Ldev/edge0/chat/MainActivity;->-$$Nest$smjson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-static {v0}, Ldev/edge0/chat/MainActivity;->-$$Nest$smjson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "window.__edge0ImportProgress("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",0,"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 269
    invoke-static {p0, p1}, Ldev/edge0/chat/MainActivity;->-$$Nest$mjs(Ldev/edge0/chat/MainActivity;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$importModel$0$dev-edge0-chat-MainActivity$Bridge(Ljava/lang/String;)V
    .locals 2

    .line 194
    iget-object p0, p0, Ldev/edge0/chat/MainActivity$Bridge;->this$0:Ldev/edge0/chat/MainActivity;

    invoke-static {p1}, Ldev/edge0/chat/MainActivity;->-$$Nest$smjson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "window.__edge0ImportDone("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ldev/edge0/chat/MainActivity;->-$$Nest$mjs(Ldev/edge0/chat/MainActivity;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$importModel$1$dev-edge0-chat-MainActivity$Bridge(Ljava/lang/String;)V
    .locals 2

    .line 193
    invoke-direct {p0, p1}, Ldev/edge0/chat/MainActivity$Bridge;->doImportModel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 194
    iget-object v0, p0, Ldev/edge0/chat/MainActivity$Bridge;->this$0:Ldev/edge0/chat/MainActivity;

    new-instance v1, Ldev/edge0/chat/MainActivity$Bridge$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Ldev/edge0/chat/MainActivity$Bridge$$ExternalSyntheticLambda0;-><init>(Ldev/edge0/chat/MainActivity$Bridge;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ldev/edge0/chat/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public newConversation()V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 328
    iget-object p0, p0, Ldev/edge0/chat/MainActivity$Bridge;->this$0:Ldev/edge0/chat/MainActivity;

    invoke-static {p0}, Ldev/edge0/chat/MainActivity;->-$$Nest$fgetengine(Ldev/edge0/chat/MainActivity;)Ldev/edge0/chat/Edge0Engine;

    move-result-object p0

    invoke-virtual {p0}, Ldev/edge0/chat/Edge0Engine;->newConversation()V

    return-void
.end method

.method public privateModelBytes()J
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 206
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Ldev/edge0/chat/MainActivity$Bridge;->this$0:Ldev/edge0/chat/MainActivity;

    invoke-virtual {p0}, Ldev/edge0/chat/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "models/edge0-assets-35b"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 208
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_1

    .line 209
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p0, v3

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    add-long/2addr v0, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public privateModelDirIfReady()Ljava/lang/String;
    .locals 11
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 139
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Ldev/edge0/chat/MainActivity$Bridge;->this$0:Ldev/edge0/chat/MainActivity;

    invoke-virtual {p0}, Ldev/edge0/chat/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "models/edge0-assets-35b"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 140
    const-string v6, "tokenizer.json"

    const-string v7, "chat_template.jinja"

    const-string v2, "model.json"

    const-string v3, "base.gguf"

    const-string v4, "lora.gguf"

    const-string v5, "prerouter.gguf"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object p0

    .line 143
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "Download/edge0-assets-35b"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x6

    if-ge v2, v3, :cond_3

    .line 145
    aget-object v3, p0, v2

    .line 146
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 147
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    const-string v6, ""

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-nez v5, :cond_0

    goto :goto_1

    .line 148
    :cond_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 149
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v3, v7, v3

    if-eqz v3, :cond_1

    return-object v6

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v6

    .line 151
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public send(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 325
    iget-object p0, p0, Ldev/edge0/chat/MainActivity$Bridge;->this$0:Ldev/edge0/chat/MainActivity;

    invoke-static {p0}, Ldev/edge0/chat/MainActivity;->-$$Nest$fgetengine(Ldev/edge0/chat/MainActivity;)Ldev/edge0/chat/Edge0Engine;

    move-result-object p0

    invoke-virtual {p0, p1}, Ldev/edge0/chat/Edge0Engine;->send(Ljava/lang/String;)V

    return-void
.end method

.method public start(Ljava/lang/String;)Z
    .locals 25
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 280
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    move-object/from16 v3, p1

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    const-string v3, "modelDir"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 283
    const-string v5, "threads"

    const/4 v6, 0x4

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v17

    .line 284
    const-string v5, "context"

    invoke-virtual {v2, v5, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v18

    .line 285
    const-string v5, "maxTokens"

    const/16 v6, 0x100

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v19

    .line 286
    const-string v5, "system"

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 287
    const-string v5, "temperature"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    if-eqz v6, :cond_0

    invoke-virtual {v2, v5, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v5

    move-wide/from16 v20, v5

    goto :goto_0

    :cond_0
    move-wide/from16 v20, v7

    .line 288
    :goto_0
    const-string v5, "topP"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v2, v5, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v7

    :cond_1
    move-wide/from16 v22, v7

    .line 289
    const-string v5, "topK"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, -0x1

    if-eqz v6, :cond_2

    invoke-virtual {v2, v5, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    :cond_2
    move v2, v7

    .line 292
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 293
    iget-object v6, v0, Ldev/edge0/chat/MainActivity$Bridge;->this$0:Ldev/edge0/chat/MainActivity;

    invoke-static {v6}, Ldev/edge0/chat/MainActivity;->-$$Nest$fgetenginePath(Ldev/edge0/chat/MainActivity;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v6, v0, Ldev/edge0/chat/MainActivity$Bridge;->this$0:Ldev/edge0/chat/MainActivity;

    invoke-static {v6}, Ldev/edge0/chat/MainActivity;->-$$Nest$fgetenginePath(Ldev/edge0/chat/MainActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    :cond_3
    iget-object v6, v0, Ldev/edge0/chat/MainActivity$Bridge;->this$0:Ldev/edge0/chat/MainActivity;

    invoke-static {v6}, Ldev/edge0/chat/MainActivity;->-$$Nest$fgetengineFallbacks(Ldev/edge0/chat/MainActivity;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 295
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 296
    iget-object v0, v0, Ldev/edge0/chat/MainActivity$Bridge;->this$0:Ldev/edge0/chat/MainActivity;

    const-string v2, "\u627e\u4e0d\u5230\u5f15\u64ce\u4e8c\u8fdb\u5236\uff08nativeLibraryDir \u4e3a\u7a7a\uff09"

    invoke-virtual {v0, v2}, Ldev/edge0/chat/MainActivity;->onError(Ljava/lang/String;)V

    return v1

    .line 299
    :cond_4
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 300
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :goto_1
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v13, v5

    check-cast v13, Ljava/lang/String;

    .line 301
    iget-object v5, v0, Ldev/edge0/chat/MainActivity$Bridge;->this$0:Ldev/edge0/chat/MainActivity;

    invoke-static {v5}, Ldev/edge0/chat/MainActivity;->-$$Nest$fgetengine(Ldev/edge0/chat/MainActivity;)Ldev/edge0/chat/Edge0Engine;

    move-result-object v5

    iput-boolean v1, v5, Ldev/edge0/chat/Edge0Engine;->lastStartWasExecutableOk:Z

    .line 302
    iget-object v5, v0, Ldev/edge0/chat/MainActivity$Bridge;->this$0:Ldev/edge0/chat/MainActivity;

    invoke-static {v5}, Ldev/edge0/chat/MainActivity;->-$$Nest$fgetengine(Ldev/edge0/chat/MainActivity;)Ldev/edge0/chat/Edge0Engine;

    move-result-object v5

    move-object v6, v13

    move-object v7, v3

    move/from16 v8, v17

    move/from16 v9, v18

    move-object v10, v4

    move-wide/from16 v11, v20

    move-object v1, v13

    move-wide/from16 v13, v22

    move-object/from16 p1, v4

    move-object v4, v15

    move v15, v2

    move/from16 v16, v19

    invoke-virtual/range {v5 .. v16}, Ldev/edge0/chat/Edge0Engine;->start(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;DDII)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 304
    iget-object v0, v0, Ldev/edge0/chat/MainActivity$Bridge;->this$0:Ldev/edge0/chat/MainActivity;

    invoke-static {v0, v1}, Ldev/edge0/chat/MainActivity;->-$$Nest$fputenginePath(Ldev/edge0/chat/MainActivity;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    .line 305
    :cond_5
    iget-object v5, v0, Ldev/edge0/chat/MainActivity$Bridge;->this$0:Ldev/edge0/chat/MainActivity;

    invoke-static {v5}, Ldev/edge0/chat/MainActivity;->-$$Nest$fgetengine(Ldev/edge0/chat/MainActivity;)Ldev/edge0/chat/Edge0Engine;

    move-result-object v5

    iget-boolean v5, v5, Ldev/edge0/chat/Edge0Engine;->lastStartWasExecutableOk:Z

    if-eqz v5, :cond_6

    .line 308
    iget-object v2, v0, Ldev/edge0/chat/MainActivity$Bridge;->this$0:Ldev/edge0/chat/MainActivity;

    invoke-static {v2, v1}, Ldev/edge0/chat/MainActivity;->-$$Nest$fputenginePath(Ldev/edge0/chat/MainActivity;Ljava/lang/String;)V

    .line 309
    iget-object v0, v0, Ldev/edge0/chat/MainActivity$Bridge;->this$0:Ldev/edge0/chat/MainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5f15\u64ce\u5df2\u80fd\u8fd0\u884c\uff0c\u4f46\u65e0\u6cd5\u52a0\u8f7d\u6a21\u578b\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\uff08\u8bf7\u786e\u8ba4\u6a21\u578b\u76ee\u5f55\u5b58\u5728\u4e14\u53ef\u8bfb\uff0c\u89c1 \u2699 \u6a21\u578b\u8bbe\u7f6e \u2192 \u8bca\u65ad\uff09"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldev/edge0/chat/MainActivity;->onError(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    .line 313
    :cond_6
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \u4e0d\u53ef\u6267\u884c; "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v15, v4

    const/4 v1, 0x0

    move-object/from16 v4, p1

    goto :goto_1

    :cond_7
    move-object v4, v15

    .line 315
    iget-object v0, v0, Ldev/edge0/chat/MainActivity$Bridge;->this$0:Ldev/edge0/chat/MainActivity;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u5f15\u64ce\u65e0\u6cd5\u6267\u884c: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldev/edge0/chat/MainActivity;->onError(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :catch_0
    move v0, v1

    return v0
.end method

.method public stop()V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 331
    iget-object p0, p0, Ldev/edge0/chat/MainActivity$Bridge;->this$0:Ldev/edge0/chat/MainActivity;

    invoke-static {p0}, Ldev/edge0/chat/MainActivity;->-$$Nest$fgetengine(Ldev/edge0/chat/MainActivity;)Ldev/edge0/chat/Edge0Engine;

    move-result-object p0

    invoke-virtual {p0}, Ldev/edge0/chat/Edge0Engine;->stop()V

    return-void
.end method

.method public runtimeStatus()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation
    iget-object v0, p0, Ldev/edge0/chat/MainActivity$Bridge;->this$0:Ldev/edge0/chat/MainActivity;
    invoke-static {v0}, Ldev/edge0/chat/MainActivity;->-$$Nest$fgetengine(Ldev/edge0/chat/MainActivity;)Ldev/edge0/chat/Edge0Engine;
    move-result-object v0
    invoke-virtual {v0}, Ldev/edge0/chat/Edge0Engine;->statusJson()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method public cancelStartup()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation
    iget-object v0, p0, Ldev/edge0/chat/MainActivity$Bridge;->this$0:Ldev/edge0/chat/MainActivity;
    invoke-static {v0}, Ldev/edge0/chat/MainActivity;->-$$Nest$fgetengine(Ldev/edge0/chat/MainActivity;)Ldev/edge0/chat/Edge0Engine;
    move-result-object v0
    invoke-virtual {v0}, Ldev/edge0/chat/Edge0Engine;->shutdown()V
    return-void
.end method
