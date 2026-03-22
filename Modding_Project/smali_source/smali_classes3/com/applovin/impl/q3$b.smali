.class Lcom/applovin/impl/q3$b;
.super Ljava/lang/Thread;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/q3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/BlockingQueue;

.field private final b:Lcom/applovin/impl/sdk/k;


# direct methods
.method private constructor <init>(Ljava/util/concurrent/BlockingQueue;ILcom/applovin/impl/sdk/k;)V
    .locals 0

    .line 2
    const-string p2, "AppLovinSdk:network"

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    if-eqz p3, :cond_0

    .line 3
    iput-object p1, p0, Lcom/applovin/impl/q3$b;->a:Ljava/util/concurrent/BlockingQueue;

    .line 4
    iput-object p3, p0, Lcom/applovin/impl/q3$b;->b:Lcom/applovin/impl/sdk/k;

    .line 5
    sget-object p1, Lcom/applovin/impl/l4;->Q:Lcom/applovin/impl/l4;

    invoke-virtual {p3, p1}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/l4;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setPriority(I)V

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No sdk specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No request queue specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Ljava/util/concurrent/BlockingQueue;ILcom/applovin/impl/sdk/k;Lcom/applovin/impl/q3$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/impl/q3$b;-><init>(Ljava/util/concurrent/BlockingQueue;ILcom/applovin/impl/sdk/k;)V

    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/applovin/impl/q3$c;Lcom/applovin/impl/q3$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/applovin/impl/q3$b;->a(Lcom/applovin/impl/q3$c;Lcom/applovin/impl/q3$d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private a(Lcom/applovin/impl/q3$c;)Ljava/net/HttpURLConnection;
    .locals 3

    .line 4
    new-instance v0, Ljava/net/URL;

    invoke-static {p1}, Lcom/applovin/impl/q3$c;->c(Lcom/applovin/impl/q3$c;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 6
    invoke-static {p1}, Lcom/applovin/impl/q3$c;->d(Lcom/applovin/impl/q3$c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 7
    invoke-static {p1}, Lcom/applovin/impl/q3$c;->e(Lcom/applovin/impl/q3$c;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 8
    invoke-static {p1}, Lcom/applovin/impl/q3$c;->e(Lcom/applovin/impl/q3$c;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setDefaultUseCaches(Z)V

    .line 10
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setAllowUserInteraction(Z)V

    .line 11
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setUseCaches(Z)V

    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 13
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 14
    invoke-static {p1}, Lcom/applovin/impl/q3$c;->f(Lcom/applovin/impl/q3$c;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 15
    invoke-static {p1}, Lcom/applovin/impl/q3$c;->f(Lcom/applovin/impl/q3$c;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 16
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/q3$b;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/q3$c;

    .line 2
    invoke-direct {p0, v0}, Lcom/applovin/impl/q3$b;->b(Lcom/applovin/impl/q3$c;)V

    return-void
.end method

.method private static synthetic a(Lcom/applovin/impl/q3$c;Lcom/applovin/impl/q3$d;)V
    .locals 0

    .line 3
    invoke-static {p0}, Lcom/applovin/impl/q3$c;->g(Lcom/applovin/impl/q3$c;)Landroidx/core/util/Consumer;

    move-result-object p0

    invoke-interface {p0, p1}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private b(Lcom/applovin/impl/q3$c;)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v2, "processRequest"

    .line 4
    .line 5
    const-string v3, "details"

    .line 6
    .line 7
    const-string v4, "NetworkCommunicationThread"

    .line 8
    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    .line 11
    .line 12
    move-result-wide v5

    .line 13
    const/4 v7, 0x0

    .line 14
    const/4 v8, 0x0

    .line 15
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/applovin/impl/q3$b;->a(Lcom/applovin/impl/q3$c;)Ljava/net/HttpURLConnection;

    .line 16
    .line 17
    .line 18
    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    .line 19
    :try_start_1
    invoke-static/range {p1 .. p1}, Lcom/applovin/impl/q3$c;->a(Lcom/applovin/impl/q3$c;)[B

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-static/range {p1 .. p1}, Lcom/applovin/impl/q3$c;->a(Lcom/applovin/impl/q3$c;)[B

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    array-length v0, v0

    .line 30
    if-lez v0, :cond_1

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    invoke-virtual {v9, v0}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 34
    .line 35
    .line 36
    invoke-static/range {p1 .. p1}, Lcom/applovin/impl/q3$c;->a(Lcom/applovin/impl/q3$c;)[B

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    array-length v0, v0

    .line 41
    invoke-virtual {v9, v0}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 42
    .line 43
    .line 44
    :try_start_2
    invoke-virtual {v9}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 45
    .line 46
    .line 47
    move-result-object v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    :try_start_3
    invoke-static/range {p1 .. p1}, Lcom/applovin/impl/q3$c;->a(Lcom/applovin/impl/q3$c;)[B

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v10, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 53
    .line 54
    .line 55
    :try_start_4
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 56
    .line 57
    .line 58
    goto :goto_4

    .line 59
    :catchall_0
    move-exception v0

    .line 60
    goto :goto_1

    .line 61
    :catchall_1
    move-exception v0

    .line 62
    move-object v11, v0

    .line 63
    if-eqz v10, :cond_0

    .line 64
    .line 65
    :try_start_5
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :catchall_2
    move-exception v0

    .line 70
    :try_start_6
    invoke-virtual {v11, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 71
    .line 72
    .line 73
    :cond_0
    :goto_0
    throw v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 74
    :goto_1
    :try_start_7
    new-instance v10, Ljava/util/HashMap;

    .line 75
    .line 76
    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 77
    .line 78
    .line 79
    const-string v11, "outputStream"

    .line 80
    .line 81
    invoke-static {v3, v11, v10}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 82
    .line 83
    .line 84
    iget-object v11, v1, Lcom/applovin/impl/q3$b;->b:Lcom/applovin/impl/sdk/k;

    .line 85
    .line 86
    invoke-virtual {v11}, Lcom/applovin/impl/sdk/k;->E()Lcom/applovin/impl/m1;

    .line 87
    .line 88
    .line 89
    move-result-object v11

    .line 90
    invoke-virtual {v11, v4, v2, v0, v10}, Lcom/applovin/impl/m1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 91
    .line 92
    .line 93
    throw v0

    .line 94
    :catchall_3
    move-exception v0

    .line 95
    move-object v13, v8

    .line 96
    :goto_2
    move-object v10, v9

    .line 97
    move v9, v7

    .line 98
    :goto_3
    move-wide v6, v5

    .line 99
    move-object v5, v0

    .line 100
    goto :goto_9

    .line 101
    :cond_1
    :goto_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 102
    .line 103
    .line 104
    move-result-wide v5

    .line 105
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 106
    .line 107
    .line 108
    move-result v7

    .line 109
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 110
    .line 111
    .line 112
    move-result-wide v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 113
    if-lez v7, :cond_4

    .line 114
    .line 115
    :try_start_8
    invoke-virtual {v9}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 116
    .line 117
    .line 118
    move-result-object v12
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    .line 119
    :try_start_9
    iget-object v0, v1, Lcom/applovin/impl/q3$b;->b:Lcom/applovin/impl/sdk/k;

    .line 120
    .line 121
    invoke-static {v12, v0}, Lcom/applovin/impl/n0;->a(Ljava/io/InputStream;Lcom/applovin/impl/sdk/k;)[B

    .line 122
    .line 123
    .line 124
    move-result-object v13
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 125
    if-eqz v12, :cond_2

    .line 126
    .line 127
    :try_start_a
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 128
    .line 129
    .line 130
    goto :goto_5

    .line 131
    :catchall_4
    move-exception v0

    .line 132
    goto :goto_8

    .line 133
    :cond_2
    :goto_5
    move-object v0, v8

    .line 134
    move-object v2, v0

    .line 135
    :goto_6
    move-object v8, v13

    .line 136
    goto/16 :goto_e

    .line 137
    .line 138
    :catchall_5
    move-exception v0

    .line 139
    move-object v10, v0

    .line 140
    if-eqz v12, :cond_3

    .line 141
    .line 142
    :try_start_b
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 143
    .line 144
    .line 145
    goto :goto_7

    .line 146
    :catchall_6
    move-exception v0

    .line 147
    :try_start_c
    invoke-virtual {v10, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 148
    .line 149
    .line 150
    goto :goto_7

    .line 151
    :catchall_7
    move-exception v0

    .line 152
    move-object v13, v8

    .line 153
    goto :goto_8

    .line 154
    :cond_3
    :goto_7
    throw v10
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    .line 155
    :goto_8
    :try_start_d
    new-instance v10, Ljava/util/HashMap;

    .line 156
    .line 157
    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 158
    .line 159
    .line 160
    const-string v11, "responseDataInputStream"

    .line 161
    .line 162
    invoke-static {v3, v11, v10}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 163
    .line 164
    .line 165
    iget-object v11, v1, Lcom/applovin/impl/q3$b;->b:Lcom/applovin/impl/sdk/k;

    .line 166
    .line 167
    invoke-virtual {v11}, Lcom/applovin/impl/sdk/k;->E()Lcom/applovin/impl/m1;

    .line 168
    .line 169
    .line 170
    move-result-object v11

    .line 171
    invoke-virtual {v11, v4, v2, v0, v10}, Lcom/applovin/impl/m1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 172
    .line 173
    .line 174
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    .line 175
    :catchall_8
    move-exception v0

    .line 176
    goto :goto_2

    .line 177
    :cond_4
    move-object v0, v8

    .line 178
    move-object v2, v0

    .line 179
    goto/16 :goto_e

    .line 180
    .line 181
    :catchall_9
    move-exception v0

    .line 182
    move v9, v7

    .line 183
    move-object v10, v8

    .line 184
    move-object v13, v10

    .line 185
    goto :goto_3

    .line 186
    :goto_9
    :try_start_e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 187
    .line 188
    .line 189
    move-result-wide v11

    .line 190
    iget-object v0, v1, Lcom/applovin/impl/q3$b;->b:Lcom/applovin/impl/sdk/k;

    .line 191
    .line 192
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    invoke-virtual {v0, v4, v5}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 197
    .line 198
    .line 199
    iget-object v0, v1, Lcom/applovin/impl/q3$b;->b:Lcom/applovin/impl/sdk/k;

    .line 200
    .line 201
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    .line 202
    .line 203
    .line 204
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    if-eqz v0, :cond_5

    .line 209
    .line 210
    iget-object v0, v1, Lcom/applovin/impl/q3$b;->b:Lcom/applovin/impl/sdk/k;

    .line 211
    .line 212
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    const-string v14, "Failed to make HTTP request"

    .line 217
    .line 218
    invoke-virtual {v0, v4, v14, v5}, Lcom/applovin/impl/sdk/o;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_a

    .line 219
    .line 220
    .line 221
    goto :goto_a

    .line 222
    :catchall_a
    move-exception v0

    .line 223
    goto/16 :goto_f

    .line 224
    .line 225
    :cond_5
    :goto_a
    if-eqz v10, :cond_6

    .line 226
    .line 227
    :try_start_f
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    .line 228
    .line 229
    .line 230
    move-result-object v14
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_b

    .line 231
    :try_start_10
    iget-object v0, v1, Lcom/applovin/impl/q3$b;->b:Lcom/applovin/impl/sdk/k;

    .line 232
    .line 233
    invoke-static {v14, v0}, Lcom/applovin/impl/n0;->a(Ljava/io/InputStream;Lcom/applovin/impl/sdk/k;)[B

    .line 234
    .line 235
    .line 236
    move-result-object v8
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_c

    .line 237
    if-eqz v14, :cond_6

    .line 238
    .line 239
    :try_start_11
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_b

    .line 240
    .line 241
    .line 242
    goto :goto_b

    .line 243
    :catchall_b
    move-exception v0

    .line 244
    goto :goto_d

    .line 245
    :cond_6
    :goto_b
    move-object v2, v5

    .line 246
    move-wide v5, v6

    .line 247
    move-object v0, v8

    .line 248
    move v7, v9

    .line 249
    move-object v9, v10

    .line 250
    move-wide v10, v11

    .line 251
    goto :goto_6

    .line 252
    :catchall_c
    move-exception v0

    .line 253
    move-object v15, v0

    .line 254
    if-eqz v14, :cond_7

    .line 255
    .line 256
    :try_start_12
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_d

    .line 257
    .line 258
    .line 259
    goto :goto_c

    .line 260
    :catchall_d
    move-exception v0

    .line 261
    :try_start_13
    invoke-virtual {v15, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 262
    .line 263
    .line 264
    :cond_7
    :goto_c
    throw v15
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_b

    .line 265
    :goto_d
    :try_start_14
    iget-object v14, v1, Lcom/applovin/impl/q3$b;->b:Lcom/applovin/impl/sdk/k;

    .line 266
    .line 267
    invoke-virtual {v14}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    .line 268
    .line 269
    .line 270
    move-result-object v14

    .line 271
    invoke-virtual {v14, v4, v5}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 272
    .line 273
    .line 274
    new-instance v14, Ljava/util/HashMap;

    .line 275
    .line 276
    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 277
    .line 278
    .line 279
    const-string v15, "responseErrorDataInputStream"

    .line 280
    .line 281
    invoke-static {v3, v15, v14}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 282
    .line 283
    .line 284
    iget-object v3, v1, Lcom/applovin/impl/q3$b;->b:Lcom/applovin/impl/sdk/k;

    .line 285
    .line 286
    invoke-virtual {v3}, Lcom/applovin/impl/sdk/k;->E()Lcom/applovin/impl/m1;

    .line 287
    .line 288
    .line 289
    move-result-object v3

    .line 290
    invoke-virtual {v3, v4, v2, v0, v14}, Lcom/applovin/impl/m1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_a

    .line 291
    .line 292
    .line 293
    goto :goto_b

    .line 294
    :goto_e
    iget-object v3, v1, Lcom/applovin/impl/q3$b;->b:Lcom/applovin/impl/sdk/k;

    .line 295
    .line 296
    invoke-static {v9, v3}, Lcom/applovin/impl/z6;->a(Ljava/net/HttpURLConnection;Lcom/applovin/impl/sdk/k;)V

    .line 297
    .line 298
    .line 299
    invoke-static {}, Lcom/applovin/impl/q3$d;->a()Lcom/applovin/impl/q3$d$a;

    .line 300
    .line 301
    .line 302
    move-result-object v3

    .line 303
    invoke-virtual {v3, v7}, Lcom/applovin/impl/q3$d$a;->a(I)Lcom/applovin/impl/q3$d$a;

    .line 304
    .line 305
    .line 306
    move-result-object v3

    .line 307
    invoke-virtual {v3, v8}, Lcom/applovin/impl/q3$d$a;->a([B)Lcom/applovin/impl/q3$d$a;

    .line 308
    .line 309
    .line 310
    move-result-object v3

    .line 311
    invoke-virtual {v3, v0}, Lcom/applovin/impl/q3$d$a;->b([B)Lcom/applovin/impl/q3$d$a;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    sub-long/2addr v10, v5

    .line 316
    invoke-virtual {v0, v10, v11}, Lcom/applovin/impl/q3$d$a;->a(J)Lcom/applovin/impl/q3$d$a;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    invoke-virtual {v0, v2}, Lcom/applovin/impl/q3$d$a;->a(Ljava/lang/Throwable;)Lcom/applovin/impl/q3$d$a;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    invoke-virtual {v0}, Lcom/applovin/impl/q3$d$a;->a()Lcom/applovin/impl/q3$d;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    invoke-static/range {p1 .. p1}, Lcom/applovin/impl/q3$c;->b(Lcom/applovin/impl/q3$c;)Ljava/util/concurrent/Executor;

    .line 329
    .line 330
    .line 331
    move-result-object v2

    .line 332
    new-instance v3, Lcom/applovin/impl/QQOOOOOO;

    .line 333
    .line 334
    move-object/from16 v4, p1

    .line 335
    .line 336
    invoke-direct {v3, v4, v0}, Lcom/applovin/impl/QQOOOOOO;-><init>(Lcom/applovin/impl/q3$c;Lcom/applovin/impl/q3$d;)V

    .line 337
    .line 338
    .line 339
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 340
    .line 341
    .line 342
    return-void

    .line 343
    :goto_f
    iget-object v2, v1, Lcom/applovin/impl/q3$b;->b:Lcom/applovin/impl/sdk/k;

    .line 344
    .line 345
    invoke-static {v10, v2}, Lcom/applovin/impl/z6;->a(Ljava/net/HttpURLConnection;Lcom/applovin/impl/sdk/k;)V

    .line 346
    .line 347
    .line 348
    throw v0
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 4
    .line 5
    .line 6
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/applovin/impl/q3$b;->a()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 15
    .line 16
    .line 17
    goto :goto_0
.end method
