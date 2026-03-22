.class public final Lcom/fluttercandies/flutter_image_compress/core/CompressFileHandler;
.super Lcom/fluttercandies/flutter_image_compress/core/ResultHandler;
.source "Proguard"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0015\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0015\u0010\r\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\r\u0010\u000cR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/fluttercandies/flutter_image_compress/core/CompressFileHandler;",
        "Lcom/fluttercandies/flutter_image_compress/core/ResultHandler;",
        "Lio/flutter/plugin/common/MethodCall;",
        "call",
        "Lio/flutter/plugin/common/MethodChannel$Result;",
        "result",
        "<init>",
        "(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V",
        "Landroid/content/Context;",
        "context",
        "",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Landroid/content/Context;)V",
        "Wwwwwwwwwwwwwwwwwwwwwwwwww",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Lio/flutter/plugin/common/MethodCall;",
        "flutter_image_compress_common_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodCall;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0
    .param p1    # Lio/flutter/plugin/common/MethodCall;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/flutter/plugin/common/MethodChannel$Result;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p2}, Lcom/fluttercandies/flutter_image_compress/core/ResultHandler;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fluttercandies/flutter_image_compress/core/CompressFileHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodCall;

    .line 5
    .line 6
    return-void
.end method

.method public static final Wwwwwwwwwwwwwwwwwwwwwwwww(Lcom/fluttercandies/flutter_image_compress/core/CompressFileHandler;Landroid/content/Context;)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lcom/fluttercandies/flutter_image_compress/core/CompressFileHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodCall;

    .line 4
    .line 5
    iget-object v0, v0, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Ljava/util/List;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    move-object v6, v3

    .line 15
    check-cast v6, Ljava/lang/String;

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    check-cast v3, Ljava/lang/Integer;

    .line 23
    .line 24
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    const/4 v4, 0x2

    .line 29
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    check-cast v4, Ljava/lang/Integer;

    .line 34
    .line 35
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    const/4 v5, 0x3

    .line 40
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    check-cast v5, Ljava/lang/Integer;

    .line 45
    .line 46
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 47
    .line 48
    .line 49
    move-result v10

    .line 50
    const/4 v5, 0x4

    .line 51
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    move-object v15, v5

    .line 56
    check-cast v15, Ljava/lang/String;

    .line 57
    .line 58
    const/4 v5, 0x5

    .line 59
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    check-cast v5, Ljava/lang/Integer;

    .line 64
    .line 65
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    const/4 v7, 0x6

    .line 70
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    check-cast v7, Ljava/lang/Boolean;

    .line 75
    .line 76
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 77
    .line 78
    .line 79
    move-result v7

    .line 80
    if-eqz v7, :cond_0

    .line 81
    .line 82
    sget-object v2, Lcom/fluttercandies/flutter_image_compress/exif/Exif;->INSTANCE:Lcom/fluttercandies/flutter_image_compress/exif/Exif;

    .line 83
    .line 84
    new-instance v7, Ljava/io/File;

    .line 85
    .line 86
    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2, v7}, Lcom/fluttercandies/flutter_image_compress/exif/Exif;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/File;)I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    :cond_0
    const/4 v7, 0x7

    .line 94
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v7

    .line 98
    check-cast v7, Ljava/lang/Integer;

    .line 99
    .line 100
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 101
    .line 102
    .line 103
    move-result v7

    .line 104
    const/16 v8, 0x8

    .line 105
    .line 106
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v8

    .line 110
    check-cast v8, Ljava/lang/Boolean;

    .line 111
    .line 112
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 113
    .line 114
    .line 115
    move-result v12

    .line 116
    const/16 v8, 0x9

    .line 117
    .line 118
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v8

    .line 122
    check-cast v8, Ljava/lang/Integer;

    .line 123
    .line 124
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 125
    .line 126
    .line 127
    move-result v13

    .line 128
    const/16 v8, 0xa

    .line 129
    .line 130
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    check-cast v0, Ljava/lang/Integer;

    .line 135
    .line 136
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 137
    .line 138
    .line 139
    move-result v14

    .line 140
    sget-object v0, Lcom/fluttercandies/flutter_image_compress/format/FormatRegister;->INSTANCE:Lcom/fluttercandies/flutter_image_compress/format/FormatRegister;

    .line 141
    .line 142
    invoke-virtual {v0, v7}, Lcom/fluttercandies/flutter_image_compress/format/FormatRegister;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)Lcom/fluttercandies/flutter_image_compress/handle/FormatHandler;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    const/4 v7, 0x0

    .line 147
    if-nez v0, :cond_1

    .line 148
    .line 149
    const-string v0, "No support format."

    .line 150
    .line 151
    invoke-static {v0}, Lcom/fluttercandies/flutter_image_compress/logger/LogExtKt;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1, v7}, Lcom/fluttercandies/flutter_image_compress/core/ResultHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    return-void

    .line 158
    :cond_1
    const/16 v8, 0x5a

    .line 159
    .line 160
    if-eq v2, v8, :cond_2

    .line 161
    .line 162
    const/16 v8, 0x10e

    .line 163
    .line 164
    if-eq v2, v8, :cond_2

    .line 165
    .line 166
    move v8, v3

    .line 167
    move v9, v4

    .line 168
    goto :goto_0

    .line 169
    :cond_2
    move v9, v3

    .line 170
    move v8, v4

    .line 171
    :goto_0
    add-int v11, v5, v2

    .line 172
    .line 173
    move-object v2, v7

    .line 174
    :try_start_0
    new-instance v7, Ljava/io/FileOutputStream;

    .line 175
    .line 176
    new-instance v3, Ljava/io/File;

    .line 177
    .line 178
    invoke-direct {v3, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-direct {v7, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 182
    .line 183
    .line 184
    move-object/from16 v5, p1

    .line 185
    .line 186
    move-object v4, v0

    .line 187
    :try_start_1
    invoke-interface/range {v4 .. v14}, Lcom/fluttercandies/flutter_image_compress/handle/FormatHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Ljava/lang/String;Ljava/io/OutputStream;IIIIZII)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v1, v15}, Lcom/fluttercandies/flutter_image_compress/core/ResultHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    .line 192
    .line 193
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 194
    .line 195
    .line 196
    return-void

    .line 197
    :catchall_0
    move-exception v0

    .line 198
    goto :goto_2

    .line 199
    :catch_0
    move-exception v0

    .line 200
    goto :goto_1

    .line 201
    :catchall_1
    move-exception v0

    .line 202
    move-object v7, v2

    .line 203
    goto :goto_2

    .line 204
    :catch_1
    move-exception v0

    .line 205
    move-object v7, v2

    .line 206
    :goto_1
    :try_start_2
    sget-object v3, Lcom/fluttercandies/flutter_image_compress/ImageCompressPlugin;->Companion:Lcom/fluttercandies/flutter_image_compress/ImageCompressPlugin$Companion;

    .line 207
    .line 208
    invoke-virtual {v3}, Lcom/fluttercandies/flutter_image_compress/ImageCompressPlugin$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 209
    .line 210
    .line 211
    move-result v3

    .line 212
    if-eqz v3, :cond_3

    .line 213
    .line 214
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 215
    .line 216
    .line 217
    :cond_3
    invoke-virtual {v1, v2}, Lcom/fluttercandies/flutter_image_compress/core/ResultHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 218
    .line 219
    .line 220
    if-eqz v7, :cond_4

    .line 221
    .line 222
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 223
    .line 224
    .line 225
    :cond_4
    return-void

    .line 226
    :goto_2
    if-eqz v7, :cond_5

    .line 227
    .line 228
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 229
    .line 230
    .line 231
    :cond_5
    throw v0
.end method

.method public static final Wwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/fluttercandies/flutter_image_compress/core/CompressFileHandler;Landroid/content/Context;)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lcom/fluttercandies/flutter_image_compress/core/CompressFileHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodCall;

    .line 4
    .line 5
    iget-object v0, v0, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Ljava/util/List;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    move-object v6, v3

    .line 15
    check-cast v6, Ljava/lang/String;

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    check-cast v3, Ljava/lang/Integer;

    .line 23
    .line 24
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    const/4 v4, 0x2

    .line 29
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    check-cast v4, Ljava/lang/Integer;

    .line 34
    .line 35
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    const/4 v5, 0x3

    .line 40
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    check-cast v5, Ljava/lang/Integer;

    .line 45
    .line 46
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 47
    .line 48
    .line 49
    move-result v10

    .line 50
    const/4 v5, 0x4

    .line 51
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    check-cast v5, Ljava/lang/Integer;

    .line 56
    .line 57
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    const/4 v7, 0x5

    .line 62
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    check-cast v7, Ljava/lang/Boolean;

    .line 67
    .line 68
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    const/4 v8, 0x6

    .line 73
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v8

    .line 77
    check-cast v8, Ljava/lang/Integer;

    .line 78
    .line 79
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 80
    .line 81
    .line 82
    move-result v8

    .line 83
    const/4 v9, 0x7

    .line 84
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v9

    .line 88
    check-cast v9, Ljava/lang/Boolean;

    .line 89
    .line 90
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    .line 91
    .line 92
    .line 93
    move-result v12

    .line 94
    const/16 v9, 0x8

    .line 95
    .line 96
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v9

    .line 100
    check-cast v9, Ljava/lang/Integer;

    .line 101
    .line 102
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 103
    .line 104
    .line 105
    move-result v13

    .line 106
    const/16 v9, 0x9

    .line 107
    .line 108
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    check-cast v0, Ljava/lang/Integer;

    .line 113
    .line 114
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 115
    .line 116
    .line 117
    move-result v14

    .line 118
    sget-object v0, Lcom/fluttercandies/flutter_image_compress/format/FormatRegister;->INSTANCE:Lcom/fluttercandies/flutter_image_compress/format/FormatRegister;

    .line 119
    .line 120
    invoke-virtual {v0, v8}, Lcom/fluttercandies/flutter_image_compress/format/FormatRegister;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)Lcom/fluttercandies/flutter_image_compress/handle/FormatHandler;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    const/4 v15, 0x0

    .line 125
    if-nez v0, :cond_0

    .line 126
    .line 127
    const-string v0, "No support format."

    .line 128
    .line 129
    invoke-static {v0}, Lcom/fluttercandies/flutter_image_compress/logger/LogExtKt;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1, v15}, Lcom/fluttercandies/flutter_image_compress/core/ResultHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    return-void

    .line 136
    :cond_0
    if-eqz v7, :cond_1

    .line 137
    .line 138
    new-instance v2, Ljava/io/File;

    .line 139
    .line 140
    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-static {v2}, Lkotlin/io/FilesKt;->readBytes(Ljava/io/File;)[B

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    sget-object v7, Lcom/fluttercandies/flutter_image_compress/exif/Exif;->INSTANCE:Lcom/fluttercandies/flutter_image_compress/exif/Exif;

    .line 148
    .line 149
    invoke-virtual {v7, v2}, Lcom/fluttercandies/flutter_image_compress/exif/Exif;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww([B)I

    .line 150
    .line 151
    .line 152
    move-result v2

    .line 153
    :cond_1
    const/16 v7, 0x5a

    .line 154
    .line 155
    if-eq v2, v7, :cond_2

    .line 156
    .line 157
    const/16 v7, 0x10e

    .line 158
    .line 159
    if-eq v2, v7, :cond_2

    .line 160
    .line 161
    move v8, v3

    .line 162
    move v9, v4

    .line 163
    goto :goto_0

    .line 164
    :cond_2
    move v9, v3

    .line 165
    move v8, v4

    .line 166
    :goto_0
    add-int v11, v5, v2

    .line 167
    .line 168
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    .line 169
    .line 170
    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 171
    .line 172
    .line 173
    move-object/from16 v5, p1

    .line 174
    .line 175
    move-object v4, v0

    .line 176
    :try_start_0
    invoke-interface/range {v4 .. v14}, Lcom/fluttercandies/flutter_image_compress/handle/FormatHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Ljava/lang/String;Ljava/io/OutputStream;IIIIZII)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-virtual {v1, v0}, Lcom/fluttercandies/flutter_image_compress/core/ResultHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    .line 185
    .line 186
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 187
    .line 188
    .line 189
    return-void

    .line 190
    :catchall_0
    move-exception v0

    .line 191
    goto :goto_1

    .line 192
    :catch_0
    move-exception v0

    .line 193
    :try_start_1
    sget-object v2, Lcom/fluttercandies/flutter_image_compress/ImageCompressPlugin;->Companion:Lcom/fluttercandies/flutter_image_compress/ImageCompressPlugin$Companion;

    .line 194
    .line 195
    invoke-virtual {v2}, Lcom/fluttercandies/flutter_image_compress/ImageCompressPlugin$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 196
    .line 197
    .line 198
    move-result v2

    .line 199
    if-eqz v2, :cond_3

    .line 200
    .line 201
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 202
    .line 203
    .line 204
    :cond_3
    invoke-virtual {v1, v15}, Lcom/fluttercandies/flutter_image_compress/core/ResultHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 205
    .line 206
    .line 207
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 208
    .line 209
    .line 210
    return-void

    .line 211
    :goto_1
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 212
    .line 213
    .line 214
    throw v0
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/fluttercandies/flutter_image_compress/core/CompressFileHandler;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/fluttercandies/flutter_image_compress/core/CompressFileHandler;->Wwwwwwwwwwwwwwwwwwwwwwwww(Lcom/fluttercandies/flutter_image_compress/core/CompressFileHandler;Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/fluttercandies/flutter_image_compress/core/CompressFileHandler;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/fluttercandies/flutter_image_compress/core/CompressFileHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/fluttercandies/flutter_image_compress/core/CompressFileHandler;Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final Wwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/fluttercandies/flutter_image_compress/core/ResultHandler;->Companion:Lcom/fluttercandies/flutter_image_compress/core/ResultHandler$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/fluttercandies/flutter_image_compress/core/ResultHandler$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/concurrent/ExecutorService;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, LKkkkkkkkkkkkkkkkkkkkkkkkk/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    .line 8
    .line 9
    invoke-direct {v1, p0, p1}, LKkkkkkkkkkkkkkkkkkkkkkkkk/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;-><init>(Lcom/fluttercandies/flutter_image_compress/core/CompressFileHandler;Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/fluttercandies/flutter_image_compress/core/ResultHandler;->Companion:Lcom/fluttercandies/flutter_image_compress/core/ResultHandler$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/fluttercandies/flutter_image_compress/core/ResultHandler$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/concurrent/ExecutorService;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, LKkkkkkkkkkkkkkkkkkkkkkkkk/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    .line 8
    .line 9
    invoke-direct {v1, p0, p1}, LKkkkkkkkkkkkkkkkkkkkkkkkk/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;-><init>(Lcom/fluttercandies/flutter_image_compress/core/CompressFileHandler;Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
