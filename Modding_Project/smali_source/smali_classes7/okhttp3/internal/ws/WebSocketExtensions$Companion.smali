.class public final Lokhttp3/internal/ws/WebSocketExtensions$Companion;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/ws/WebSocketExtensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0015\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\n\u001a\u00020\t8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lokhttp3/internal/ws/WebSocketExtensions$Companion;",
        "",
        "<init>",
        "()V",
        "Lokhttp3/Headers;",
        "responseHeaders",
        "Lokhttp3/internal/ws/WebSocketExtensions;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Lokhttp3/Headers;)Lokhttp3/internal/ws/WebSocketExtensions;",
        "",
        "HEADER_WEB_SOCKET_EXTENSION",
        "Ljava/lang/String;",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lokhttp3/internal/ws/WebSocketExtensions$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Headers;)Lokhttp3/internal/ws/WebSocketExtensions;
    .locals 21
    .param p1    # Lokhttp3/Headers;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    invoke-virtual {v0}, Lokhttp3/Headers;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v4, 0x0

    .line 8
    const/4 v6, 0x0

    .line 9
    const/4 v7, 0x0

    .line 10
    const/4 v8, 0x0

    .line 11
    const/4 v9, 0x0

    .line 12
    const/4 v10, 0x0

    .line 13
    const/4 v11, 0x0

    .line 14
    :goto_0
    if-ge v4, v1, :cond_13

    .line 15
    .line 16
    add-int/lit8 v5, v4, 0x1

    .line 17
    .line 18
    invoke-virtual {v0, v4}, Lokhttp3/Headers;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v12

    .line 22
    const-string v13, "Sec-WebSocket-Extensions"

    .line 23
    .line 24
    const/4 v14, 0x1

    .line 25
    invoke-static {v12, v13, v14}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 26
    .line 27
    .line 28
    move-result v12

    .line 29
    if-nez v12, :cond_1

    .line 30
    .line 31
    :cond_0
    move v4, v5

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {v0, v4}, Lokhttp3/Headers;->Wwwwwwwwwwwwwwwwwwwwwwwwww(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v15

    .line 37
    const/4 v4, 0x0

    .line 38
    :goto_1
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    .line 39
    .line 40
    .line 41
    move-result v12

    .line 42
    if-ge v4, v12, :cond_0

    .line 43
    .line 44
    const/16 v19, 0x4

    .line 45
    .line 46
    const/16 v20, 0x0

    .line 47
    .line 48
    const/16 v16, 0x2c

    .line 49
    .line 50
    const/16 v18, 0x0

    .line 51
    .line 52
    move/from16 v17, v4

    .line 53
    .line 54
    invoke-static/range {v15 .. v20}, Lokhttp3/internal/Util;->Wwwwwwwwwwwwwwwww(Ljava/lang/String;CIIILjava/lang/Object;)I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    move/from16 v12, v17

    .line 59
    .line 60
    const/16 v13, 0x3b

    .line 61
    .line 62
    invoke-static {v15, v13, v12, v4}, Lokhttp3/internal/Util;->Wwwwwwwwwwwwwwwwwww(Ljava/lang/String;CII)I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    invoke-static {v15, v12, v2}, Lokhttp3/internal/Util;->Kkkkkkk(Ljava/lang/String;II)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v12

    .line 70
    add-int/2addr v2, v14

    .line 71
    const-string v3, "permessage-deflate"

    .line 72
    .line 73
    invoke-static {v12, v3, v14}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-eqz v3, :cond_12

    .line 78
    .line 79
    if-eqz v6, :cond_2

    .line 80
    .line 81
    goto :goto_6

    .line 82
    :cond_2
    :goto_2
    if-ge v2, v4, :cond_11

    .line 83
    .line 84
    invoke-static {v15, v13, v2, v4}, Lokhttp3/internal/Util;->Wwwwwwwwwwwwwwwwwww(Ljava/lang/String;CII)I

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    const/16 v6, 0x3d

    .line 89
    .line 90
    invoke-static {v15, v6, v2, v3}, Lokhttp3/internal/Util;->Wwwwwwwwwwwwwwwwwww(Ljava/lang/String;CII)I

    .line 91
    .line 92
    .line 93
    move-result v6

    .line 94
    invoke-static {v15, v2, v6}, Lokhttp3/internal/Util;->Kkkkkkk(Ljava/lang/String;II)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    if-ge v6, v3, :cond_3

    .line 99
    .line 100
    add-int/lit8 v6, v6, 0x1

    .line 101
    .line 102
    invoke-static {v15, v6, v3}, Lokhttp3/internal/Util;->Kkkkkkk(Ljava/lang/String;II)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    const-string v12, "\""

    .line 107
    .line 108
    invoke-static {v6, v12}, Lkotlin/text/StringsKt;->removeSurrounding(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    goto :goto_3

    .line 113
    :cond_3
    const/4 v6, 0x0

    .line 114
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 115
    .line 116
    const-string v12, "client_max_window_bits"

    .line 117
    .line 118
    invoke-static {v2, v12, v14}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 119
    .line 120
    .line 121
    move-result v12

    .line 122
    if-eqz v12, :cond_8

    .line 123
    .line 124
    if-eqz v7, :cond_4

    .line 125
    .line 126
    move v11, v14

    .line 127
    :cond_4
    if-nez v6, :cond_5

    .line 128
    .line 129
    const/4 v7, 0x0

    .line 130
    goto :goto_4

    .line 131
    :cond_5
    invoke-static {v6}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    move-object v7, v2

    .line 136
    :goto_4
    if-nez v7, :cond_7

    .line 137
    .line 138
    :cond_6
    :goto_5
    move v2, v3

    .line 139
    :goto_6
    move v11, v14

    .line 140
    goto :goto_2

    .line 141
    :cond_7
    move v2, v3

    .line 142
    goto :goto_2

    .line 143
    :cond_8
    const-string v12, "client_no_context_takeover"

    .line 144
    .line 145
    invoke-static {v2, v12, v14}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 146
    .line 147
    .line 148
    move-result v12

    .line 149
    if-eqz v12, :cond_b

    .line 150
    .line 151
    if-eqz v8, :cond_9

    .line 152
    .line 153
    move v11, v14

    .line 154
    :cond_9
    if-eqz v6, :cond_a

    .line 155
    .line 156
    move v11, v14

    .line 157
    :cond_a
    move v2, v3

    .line 158
    move v8, v14

    .line 159
    goto :goto_2

    .line 160
    :cond_b
    const-string v12, "server_max_window_bits"

    .line 161
    .line 162
    invoke-static {v2, v12, v14}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 163
    .line 164
    .line 165
    move-result v12

    .line 166
    if-eqz v12, :cond_e

    .line 167
    .line 168
    if-eqz v9, :cond_c

    .line 169
    .line 170
    move v11, v14

    .line 171
    :cond_c
    if-nez v6, :cond_d

    .line 172
    .line 173
    const/4 v9, 0x0

    .line 174
    goto :goto_7

    .line 175
    :cond_d
    invoke-static {v6}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    move-object v9, v2

    .line 180
    :goto_7
    if-nez v9, :cond_7

    .line 181
    .line 182
    goto :goto_5

    .line 183
    :cond_e
    const-string v12, "server_no_context_takeover"

    .line 184
    .line 185
    invoke-static {v2, v12, v14}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 186
    .line 187
    .line 188
    move-result v2

    .line 189
    if-eqz v2, :cond_6

    .line 190
    .line 191
    if-eqz v10, :cond_f

    .line 192
    .line 193
    move v11, v14

    .line 194
    :cond_f
    if-eqz v6, :cond_10

    .line 195
    .line 196
    move v11, v14

    .line 197
    :cond_10
    move v2, v3

    .line 198
    move v10, v14

    .line 199
    goto :goto_2

    .line 200
    :cond_11
    move v4, v2

    .line 201
    move v6, v14

    .line 202
    goto/16 :goto_1

    .line 203
    .line 204
    :cond_12
    move v4, v2

    .line 205
    move v11, v14

    .line 206
    goto/16 :goto_1

    .line 207
    .line 208
    :cond_13
    new-instance v5, Lokhttp3/internal/ws/WebSocketExtensions;

    .line 209
    .line 210
    invoke-direct/range {v5 .. v11}, Lokhttp3/internal/ws/WebSocketExtensions;-><init>(ZLjava/lang/Integer;ZLjava/lang/Integer;ZZ)V

    .line 211
    .line 212
    .line 213
    return-object v5
.end method
