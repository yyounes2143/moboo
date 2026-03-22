.class public final Lcom/fluttercandies/image_editor/ImageEditorPlugin$onMethodCall$$inlined$runOnBackground$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fluttercandies/image_editor/ImageEditorPlugin;->onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nImageEditorPlugin.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImageEditorPlugin.kt\ncom/fluttercandies/image_editor/ImageEditorPlugin$Companion$runOnBackground$1\n+ 2 ImageEditorPlugin.kt\ncom/fluttercandies/image_editor/ImageEditorPlugin\n*L\n1#1,39:1\n56#2,43:40\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwww:Lcom/fluttercandies/image_editor/core/ResultHandler;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/fluttercandies/image_editor/ImageEditorPlugin;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodCall;


# direct methods
.method public constructor <init>(Lio/flutter/plugin/common/MethodCall;Lcom/fluttercandies/image_editor/ImageEditorPlugin;Lcom/fluttercandies/image_editor/core/ResultHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/fluttercandies/image_editor/ImageEditorPlugin$onMethodCall$$inlined$runOnBackground$1;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodCall;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/fluttercandies/image_editor/ImageEditorPlugin$onMethodCall$$inlined$runOnBackground$1;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/fluttercandies/image_editor/ImageEditorPlugin;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/fluttercandies/image_editor/ImageEditorPlugin$onMethodCall$$inlined$runOnBackground$1;->Wwwwwwwwwwwwwwwwwwwwwww:Lcom/fluttercandies/image_editor/core/ResultHandler;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    const/4 v1, 0x0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/fluttercandies/image_editor/ImageEditorPlugin$onMethodCall$$inlined$runOnBackground$1;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodCall;

    .line 3
    .line 4
    iget-object v0, v0, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    .line 5
    .line 6
    if-eqz v0, :cond_9

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x1

    .line 13
    const/4 v4, 0x0

    .line 14
    sparse-switch v2, :sswitch_data_0

    .line 15
    .line 16
    .line 17
    goto/16 :goto_1

    .line 18
    .line 19
    :sswitch_0
    const-string v2, "fileToFile"

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    goto/16 :goto_1

    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Lcom/fluttercandies/image_editor/ImageEditorPlugin$onMethodCall$$inlined$runOnBackground$1;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/fluttercandies/image_editor/ImageEditorPlugin;

    .line 30
    .line 31
    iget-object v2, p0, Lcom/fluttercandies/image_editor/ImageEditorPlugin$onMethodCall$$inlined$runOnBackground$1;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodCall;

    .line 32
    .line 33
    iget-object v3, p0, Lcom/fluttercandies/image_editor/ImageEditorPlugin$onMethodCall$$inlined$runOnBackground$1;->Wwwwwwwwwwwwwwwwwwwwwww:Lcom/fluttercandies/image_editor/core/ResultHandler;

    .line 34
    .line 35
    invoke-static {v0, v2, v3, v4}, Lcom/fluttercandies/image_editor/ImageEditorPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/fluttercandies/image_editor/ImageEditorPlugin;Lio/flutter/plugin/common/MethodCall;Lcom/fluttercandies/image_editor/core/ResultHandler;Z)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :catch_0
    move-exception v0

    .line 40
    goto/16 :goto_2

    .line 41
    .line 42
    :sswitch_1
    const-string v2, "fileToMemory"

    .line 43
    .line 44
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_1

    .line 49
    .line 50
    goto/16 :goto_1

    .line 51
    .line 52
    :cond_1
    iget-object v0, p0, Lcom/fluttercandies/image_editor/ImageEditorPlugin$onMethodCall$$inlined$runOnBackground$1;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/fluttercandies/image_editor/ImageEditorPlugin;

    .line 53
    .line 54
    iget-object v2, p0, Lcom/fluttercandies/image_editor/ImageEditorPlugin$onMethodCall$$inlined$runOnBackground$1;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodCall;

    .line 55
    .line 56
    iget-object v4, p0, Lcom/fluttercandies/image_editor/ImageEditorPlugin$onMethodCall$$inlined$runOnBackground$1;->Wwwwwwwwwwwwwwwwwwwwwww:Lcom/fluttercandies/image_editor/core/ResultHandler;

    .line 57
    .line 58
    invoke-static {v0, v2, v4, v3}, Lcom/fluttercandies/image_editor/ImageEditorPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/fluttercandies/image_editor/ImageEditorPlugin;Lio/flutter/plugin/common/MethodCall;Lcom/fluttercandies/image_editor/core/ResultHandler;Z)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :sswitch_2
    const-string v2, "mergeToMemory"

    .line 63
    .line 64
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-nez v0, :cond_2

    .line 69
    .line 70
    goto/16 :goto_1

    .line 71
    .line 72
    :cond_2
    iget-object v0, p0, Lcom/fluttercandies/image_editor/ImageEditorPlugin$onMethodCall$$inlined$runOnBackground$1;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/fluttercandies/image_editor/ImageEditorPlugin;

    .line 73
    .line 74
    iget-object v2, p0, Lcom/fluttercandies/image_editor/ImageEditorPlugin$onMethodCall$$inlined$runOnBackground$1;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodCall;

    .line 75
    .line 76
    iget-object v4, p0, Lcom/fluttercandies/image_editor/ImageEditorPlugin$onMethodCall$$inlined$runOnBackground$1;->Wwwwwwwwwwwwwwwwwwwwwww:Lcom/fluttercandies/image_editor/core/ResultHandler;

    .line 77
    .line 78
    invoke-static {v0, v2, v4, v3}, Lcom/fluttercandies/image_editor/ImageEditorPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/fluttercandies/image_editor/ImageEditorPlugin;Lio/flutter/plugin/common/MethodCall;Lcom/fluttercandies/image_editor/core/ResultHandler;Z)V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :sswitch_3
    const-string v2, "memoryToFile"

    .line 83
    .line 84
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-nez v0, :cond_3

    .line 89
    .line 90
    goto/16 :goto_1

    .line 91
    .line 92
    :cond_3
    iget-object v0, p0, Lcom/fluttercandies/image_editor/ImageEditorPlugin$onMethodCall$$inlined$runOnBackground$1;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/fluttercandies/image_editor/ImageEditorPlugin;

    .line 93
    .line 94
    iget-object v2, p0, Lcom/fluttercandies/image_editor/ImageEditorPlugin$onMethodCall$$inlined$runOnBackground$1;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodCall;

    .line 95
    .line 96
    iget-object v3, p0, Lcom/fluttercandies/image_editor/ImageEditorPlugin$onMethodCall$$inlined$runOnBackground$1;->Wwwwwwwwwwwwwwwwwwwwwww:Lcom/fluttercandies/image_editor/core/ResultHandler;

    .line 97
    .line 98
    invoke-static {v0, v2, v3, v4}, Lcom/fluttercandies/image_editor/ImageEditorPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/fluttercandies/image_editor/ImageEditorPlugin;Lio/flutter/plugin/common/MethodCall;Lcom/fluttercandies/image_editor/core/ResultHandler;Z)V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :sswitch_4
    const-string v2, "mergeToFile"

    .line 103
    .line 104
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-nez v0, :cond_4

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_4
    iget-object v0, p0, Lcom/fluttercandies/image_editor/ImageEditorPlugin$onMethodCall$$inlined$runOnBackground$1;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/fluttercandies/image_editor/ImageEditorPlugin;

    .line 112
    .line 113
    iget-object v2, p0, Lcom/fluttercandies/image_editor/ImageEditorPlugin$onMethodCall$$inlined$runOnBackground$1;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodCall;

    .line 114
    .line 115
    iget-object v3, p0, Lcom/fluttercandies/image_editor/ImageEditorPlugin$onMethodCall$$inlined$runOnBackground$1;->Wwwwwwwwwwwwwwwwwwwwwww:Lcom/fluttercandies/image_editor/core/ResultHandler;

    .line 116
    .line 117
    invoke-static {v0, v2, v3, v4}, Lcom/fluttercandies/image_editor/ImageEditorPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/fluttercandies/image_editor/ImageEditorPlugin;Lio/flutter/plugin/common/MethodCall;Lcom/fluttercandies/image_editor/core/ResultHandler;Z)V

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :sswitch_5
    const-string v2, "getCachePath"

    .line 122
    .line 123
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-nez v0, :cond_5

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_5
    iget-object v0, p0, Lcom/fluttercandies/image_editor/ImageEditorPlugin$onMethodCall$$inlined$runOnBackground$1;->Wwwwwwwwwwwwwwwwwwwwwww:Lcom/fluttercandies/image_editor/core/ResultHandler;

    .line 131
    .line 132
    iget-object v2, p0, Lcom/fluttercandies/image_editor/ImageEditorPlugin$onMethodCall$$inlined$runOnBackground$1;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/fluttercandies/image_editor/ImageEditorPlugin;

    .line 133
    .line 134
    invoke-static {v2}, Lcom/fluttercandies/image_editor/ImageEditorPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/fluttercandies/image_editor/ImageEditorPlugin;)Landroid/content/Context;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    if-eqz v2, :cond_6

    .line 139
    .line 140
    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    if-eqz v2, :cond_6

    .line 145
    .line 146
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    goto :goto_0

    .line 151
    :cond_6
    move-object v2, v1

    .line 152
    :goto_0
    invoke-virtual {v0, v2}, Lcom/fluttercandies/image_editor/core/ResultHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    return-void

    .line 156
    :sswitch_6
    const-string v2, "registerFont"

    .line 157
    .line 158
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    if-nez v0, :cond_7

    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_7
    iget-object v0, p0, Lcom/fluttercandies/image_editor/ImageEditorPlugin$onMethodCall$$inlined$runOnBackground$1;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodCall;

    .line 166
    .line 167
    const-string v2, "path"

    .line 168
    .line 169
    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    check-cast v0, Ljava/lang/String;

    .line 174
    .line 175
    invoke-static {v0}, Lcom/fluttercandies/image_editor/common/font/FontUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    iget-object v2, p0, Lcom/fluttercandies/image_editor/ImageEditorPlugin$onMethodCall$$inlined$runOnBackground$1;->Wwwwwwwwwwwwwwwwwwwwwww:Lcom/fluttercandies/image_editor/core/ResultHandler;

    .line 180
    .line 181
    invoke-virtual {v2, v0}, Lcom/fluttercandies/image_editor/core/ResultHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    return-void

    .line 185
    :sswitch_7
    const-string v2, "memoryToMemory"

    .line 186
    .line 187
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    if-nez v0, :cond_8

    .line 192
    .line 193
    goto :goto_1

    .line 194
    :cond_8
    iget-object v0, p0, Lcom/fluttercandies/image_editor/ImageEditorPlugin$onMethodCall$$inlined$runOnBackground$1;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/fluttercandies/image_editor/ImageEditorPlugin;

    .line 195
    .line 196
    iget-object v2, p0, Lcom/fluttercandies/image_editor/ImageEditorPlugin$onMethodCall$$inlined$runOnBackground$1;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodCall;

    .line 197
    .line 198
    iget-object v4, p0, Lcom/fluttercandies/image_editor/ImageEditorPlugin$onMethodCall$$inlined$runOnBackground$1;->Wwwwwwwwwwwwwwwwwwwwwww:Lcom/fluttercandies/image_editor/core/ResultHandler;

    .line 199
    .line 200
    invoke-static {v0, v2, v4, v3}, Lcom/fluttercandies/image_editor/ImageEditorPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/fluttercandies/image_editor/ImageEditorPlugin;Lio/flutter/plugin/common/MethodCall;Lcom/fluttercandies/image_editor/core/ResultHandler;Z)V

    .line 201
    .line 202
    .line 203
    return-void

    .line 204
    :cond_9
    :goto_1
    iget-object v0, p0, Lcom/fluttercandies/image_editor/ImageEditorPlugin$onMethodCall$$inlined$runOnBackground$1;->Wwwwwwwwwwwwwwwwwwwwwww:Lcom/fluttercandies/image_editor/core/ResultHandler;

    .line 205
    .line 206
    invoke-virtual {v0}, Lcom/fluttercandies/image_editor/core/ResultHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V
    :try_end_0
    .catch Lcom/fluttercandies/image_editor/error/BitmapDecodeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    .line 208
    .line 209
    return-void

    .line 210
    :goto_2
    new-instance v2, Ljava/io/StringWriter;

    .line 211
    .line 212
    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 213
    .line 214
    .line 215
    new-instance v3, Ljava/io/PrintWriter;

    .line 216
    .line 217
    invoke-direct {v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 218
    .line 219
    .line 220
    :try_start_1
    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 221
    .line 222
    .line 223
    iget-object v0, p0, Lcom/fluttercandies/image_editor/ImageEditorPlugin$onMethodCall$$inlined$runOnBackground$1;->Wwwwwwwwwwwwwwwwwwwwwww:Lcom/fluttercandies/image_editor/core/ResultHandler;

    .line 224
    .line 225
    invoke-virtual {v2}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    .line 226
    .line 227
    .line 228
    move-result-object v2

    .line 229
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    const-string v4, ""

    .line 234
    .line 235
    invoke-virtual {v0, v2, v4, v1}, Lcom/fluttercandies/image_editor/core/ResultHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 236
    .line 237
    .line 238
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 239
    .line 240
    invoke-static {v3, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 241
    .line 242
    .line 243
    goto :goto_3

    .line 244
    :catchall_0
    move-exception v0

    .line 245
    move-object v1, v0

    .line 246
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 247
    :catchall_1
    move-exception v0

    .line 248
    invoke-static {v3, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 249
    .line 250
    .line 251
    throw v0

    .line 252
    :catch_1
    iget-object v4, p0, Lcom/fluttercandies/image_editor/ImageEditorPlugin$onMethodCall$$inlined$runOnBackground$1;->Wwwwwwwwwwwwwwwwwwwwwww:Lcom/fluttercandies/image_editor/core/ResultHandler;

    .line 253
    .line 254
    const/4 v8, 0x6

    .line 255
    const/4 v9, 0x0

    .line 256
    const-string v5, "Decode bitmap error."

    .line 257
    .line 258
    const/4 v6, 0x0

    .line 259
    const/4 v7, 0x0

    .line 260
    invoke-static/range {v4 .. v9}, Lcom/fluttercandies/image_editor/core/ResultHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/fluttercandies/image_editor/core/ResultHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ILjava/lang/Object;)V

    .line 261
    .line 262
    .line 263
    :goto_3
    return-void

    .line 264
    nop

    .line 265
    :sswitch_data_0
    .sparse-switch
        -0x7927c083 -> :sswitch_7
        -0x65d05a6e -> :sswitch_6
        -0x219397ef -> :sswitch_5
        0xcd648ef -> :sswitch_4
        0x2a7be6f8 -> :sswitch_3
        0x3c21ffb4 -> :sswitch_2
        0x3f6eccf8 -> :sswitch_1
        0x6cbd9733 -> :sswitch_0
    .end sparse-switch
.end method
