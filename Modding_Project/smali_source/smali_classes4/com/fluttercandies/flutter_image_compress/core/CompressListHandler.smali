.class public final Lcom/fluttercandies/flutter_image_compress/core/CompressListHandler;
.super Lcom/fluttercandies/flutter_image_compress/core/ResultHandler;
.source "Proguard"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0015\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/fluttercandies/flutter_image_compress/core/CompressListHandler;",
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
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Landroid/content/Context;)V",
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
    iput-object p1, p0, Lcom/fluttercandies/flutter_image_compress/core/CompressListHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodCall;

    .line 5
    .line 6
    return-void
.end method

.method public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/fluttercandies/flutter_image_compress/core/CompressListHandler;Landroid/content/Context;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/fluttercandies/flutter_image_compress/core/CompressListHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodCall;

    .line 2
    .line 3
    iget-object v0, v0, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Ljava/util/List;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    move-object v5, v2

    .line 13
    check-cast v5, [B

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Ljava/lang/Integer;

    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/4 v3, 0x2

    .line 27
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Ljava/lang/Integer;

    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    const/4 v4, 0x3

    .line 38
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    check-cast v4, Ljava/lang/Integer;

    .line 43
    .line 44
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 45
    .line 46
    .line 47
    move-result v9

    .line 48
    const/4 v4, 0x4

    .line 49
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    check-cast v4, Ljava/lang/Integer;

    .line 54
    .line 55
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    const/4 v6, 0x5

    .line 60
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    check-cast v6, Ljava/lang/Boolean;

    .line 65
    .line 66
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    const/4 v7, 0x6

    .line 71
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    check-cast v7, Ljava/lang/Integer;

    .line 76
    .line 77
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 78
    .line 79
    .line 80
    move-result v7

    .line 81
    const/4 v8, 0x7

    .line 82
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v8

    .line 86
    check-cast v8, Ljava/lang/Boolean;

    .line 87
    .line 88
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 89
    .line 90
    .line 91
    move-result v11

    .line 92
    const/16 v8, 0x8

    .line 93
    .line 94
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    check-cast v0, Ljava/lang/Integer;

    .line 99
    .line 100
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 101
    .line 102
    .line 103
    move-result v12

    .line 104
    if-eqz v6, :cond_0

    .line 105
    .line 106
    sget-object v0, Lcom/fluttercandies/flutter_image_compress/exif/Exif;->INSTANCE:Lcom/fluttercandies/flutter_image_compress/exif/Exif;

    .line 107
    .line 108
    invoke-virtual {v0, v5}, Lcom/fluttercandies/flutter_image_compress/exif/Exif;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww([B)I

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    :cond_0
    const/16 v0, 0x5a

    .line 113
    .line 114
    if-eq v1, v0, :cond_1

    .line 115
    .line 116
    const/16 v0, 0x10e

    .line 117
    .line 118
    if-eq v1, v0, :cond_1

    .line 119
    .line 120
    move v8, v3

    .line 121
    goto :goto_0

    .line 122
    :cond_1
    move v8, v2

    .line 123
    move v2, v3

    .line 124
    :goto_0
    sget-object v0, Lcom/fluttercandies/flutter_image_compress/format/FormatRegister;->INSTANCE:Lcom/fluttercandies/flutter_image_compress/format/FormatRegister;

    .line 125
    .line 126
    invoke-virtual {v0, v7}, Lcom/fluttercandies/flutter_image_compress/format/FormatRegister;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)Lcom/fluttercandies/flutter_image_compress/handle/FormatHandler;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    const/4 v13, 0x0

    .line 131
    if-nez v3, :cond_2

    .line 132
    .line 133
    const-string p1, "No support format."

    .line 134
    .line 135
    invoke-static {p1}, Lcom/fluttercandies/flutter_image_compress/logger/LogExtKt;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0, v13}, Lcom/fluttercandies/flutter_image_compress/core/ResultHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    return-void

    .line 142
    :cond_2
    add-int v10, v4, v1

    .line 143
    .line 144
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    .line 145
    .line 146
    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 147
    .line 148
    .line 149
    move-object v4, p1

    .line 150
    move v7, v2

    .line 151
    :try_start_0
    invoke-interface/range {v3 .. v12}, Lcom/fluttercandies/flutter_image_compress/handle/FormatHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;[BLjava/io/OutputStream;IIIIZI)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-virtual {p0, p1}, Lcom/fluttercandies/flutter_image_compress/core/ResultHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/fluttercandies/flutter_image_compress/exception/CompressError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    .line 160
    .line 161
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 162
    .line 163
    .line 164
    return-void

    .line 165
    :catchall_0
    move-exception v0

    .line 166
    move-object p0, v0

    .line 167
    goto :goto_5

    .line 168
    :catch_0
    move-exception v0

    .line 169
    move-object p1, v0

    .line 170
    goto :goto_1

    .line 171
    :catch_1
    move-exception v0

    .line 172
    move-object p1, v0

    .line 173
    goto :goto_3

    .line 174
    :goto_1
    :try_start_1
    sget-object v0, Lcom/fluttercandies/flutter_image_compress/ImageCompressPlugin;->Companion:Lcom/fluttercandies/flutter_image_compress/ImageCompressPlugin$Companion;

    .line 175
    .line 176
    invoke-virtual {v0}, Lcom/fluttercandies/flutter_image_compress/ImageCompressPlugin$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    if-eqz v0, :cond_3

    .line 181
    .line 182
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 183
    .line 184
    .line 185
    :cond_3
    invoke-virtual {p0, v13}, Lcom/fluttercandies/flutter_image_compress/core/ResultHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    .line 187
    .line 188
    :goto_2
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 189
    .line 190
    .line 191
    goto :goto_4

    .line 192
    :goto_3
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    invoke-static {v0}, Lcom/fluttercandies/flutter_image_compress/logger/LogExtKt;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;)V

    .line 197
    .line 198
    .line 199
    sget-object v0, Lcom/fluttercandies/flutter_image_compress/ImageCompressPlugin;->Companion:Lcom/fluttercandies/flutter_image_compress/ImageCompressPlugin$Companion;

    .line 200
    .line 201
    invoke-virtual {v0}, Lcom/fluttercandies/flutter_image_compress/ImageCompressPlugin$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    if-eqz v0, :cond_4

    .line 206
    .line 207
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 208
    .line 209
    .line 210
    :cond_4
    invoke-virtual {p0, v13}, Lcom/fluttercandies/flutter_image_compress/core/ResultHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 211
    .line 212
    .line 213
    goto :goto_2

    .line 214
    :goto_4
    return-void

    .line 215
    :goto_5
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 216
    .line 217
    .line 218
    throw p0
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/fluttercandies/flutter_image_compress/core/CompressListHandler;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/fluttercandies/flutter_image_compress/core/CompressListHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/fluttercandies/flutter_image_compress/core/CompressListHandler;Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;)V
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
    new-instance v1, LKkkkkkkkkkkkkkkkkkkkkkkkk/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    .line 8
    .line 9
    invoke-direct {v1, p0, p1}, LKkkkkkkkkkkkkkkkkkkkkkkkk/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;-><init>(Lcom/fluttercandies/flutter_image_compress/core/CompressListHandler;Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
