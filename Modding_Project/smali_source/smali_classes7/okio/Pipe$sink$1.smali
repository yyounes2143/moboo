.class public final Lokio/Pipe$sink$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lokio/Sink;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\n\u0018\u00002\u00020\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\nJ\u000f\u0010\r\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eR\u0014\u0010\r\u001a\u00020\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "okio/Pipe$sink$1",
        "Lokio/Sink;",
        "Lokio/Buffer;",
        "source",
        "",
        "byteCount",
        "",
        "Wwwwwwwwwwwwwwwwwwwwwwwww",
        "(Lokio/Buffer;J)V",
        "flush",
        "()V",
        "close",
        "Lokio/Timeout;",
        "timeout",
        "()Lokio/Timeout;",
        "Lokio/Timeout;",
        "okio"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPipe.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Pipe.kt\nokio/Pipe$sink$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Pipe.kt\nokio/Pipe\n+ 4 Timeout.kt\nokio/Timeout\n*L\n1#1,257:1\n1#2:258\n217#3:259\n218#3:286\n217#3:287\n218#3:314\n217#3:315\n218#3:342\n268#4,26:260\n268#4,26:288\n268#4,26:316\n*S KotlinDebug\n*F\n+ 1 Pipe.kt\nokio/Pipe$sink$1\n*L\n87#1:259\n87#1:286\n106#1:287\n106#1:314\n124#1:315\n124#1:342\n87#1:260,26\n106#1:288,26\n124#1:316,26\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwww:Lokio/Pipe;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Timeout;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# virtual methods
.method public Wwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Buffer;J)V
    .locals 12
    .param p1    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lokio/Pipe$sink$1;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokio/Pipe;

    .line 2
    .line 3
    invoke-virtual {v0}, Lokio/Pipe;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/concurrent/locks/ReentrantLock;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lokio/Pipe$sink$1;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokio/Pipe;

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    invoke-virtual {v1}, Lokio/Pipe;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-nez v2, :cond_c

    .line 17
    .line 18
    invoke-virtual {v1}, Lokio/Pipe;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 19
    .line 20
    .line 21
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    const-string v3, "canceled"

    .line 23
    .line 24
    if-nez v2, :cond_b

    .line 25
    .line 26
    :goto_0
    const-wide/16 v4, 0x0

    .line 27
    .line 28
    cmp-long v2, p2, v4

    .line 29
    .line 30
    if-lez v2, :cond_4

    .line 31
    .line 32
    :try_start_1
    invoke-virtual {v1}, Lokio/Pipe;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokio/Sink;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_0
    invoke-virtual {v1}, Lokio/Pipe;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-nez v2, :cond_3

    .line 44
    .line 45
    invoke-virtual {v1}, Lokio/Pipe;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 46
    .line 47
    .line 48
    move-result-wide v6

    .line 49
    invoke-virtual {v1}, Lokio/Pipe;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokio/Buffer;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v2}, Lokio/Buffer;->Kk()J

    .line 54
    .line 55
    .line 56
    move-result-wide v8

    .line 57
    sub-long/2addr v6, v8

    .line 58
    cmp-long v2, v6, v4

    .line 59
    .line 60
    if-nez v2, :cond_2

    .line 61
    .line 62
    iget-object v2, p0, Lokio/Pipe$sink$1;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Timeout;

    .line 63
    .line 64
    invoke-virtual {v1}, Lokio/Pipe;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/concurrent/locks/Condition;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-virtual {v2, v4}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/util/concurrent/locks/Condition;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Lokio/Pipe;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-nez v2, :cond_1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 79
    .line 80
    invoke-direct {p1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p1

    .line 84
    :catchall_0
    move-exception p1

    .line 85
    goto/16 :goto_2

    .line 86
    .line 87
    :cond_2
    invoke-static {v6, v7, p2, p3}, Ljava/lang/Math;->min(JJ)J

    .line 88
    .line 89
    .line 90
    move-result-wide v4

    .line 91
    invoke-virtual {v1}, Lokio/Pipe;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokio/Buffer;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-virtual {v2, p1, v4, v5}, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Buffer;J)V

    .line 96
    .line 97
    .line 98
    sub-long/2addr p2, v4

    .line 99
    invoke-virtual {v1}, Lokio/Pipe;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/concurrent/locks/Condition;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_3
    new-instance p1, Ljava/io/IOException;

    .line 108
    .line 109
    const-string p2, "source is closed"

    .line 110
    .line 111
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    throw p1

    .line 115
    :cond_4
    const/4 v2, 0x0

    .line 116
    :goto_1
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    .line 118
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 119
    .line 120
    .line 121
    if-eqz v2, :cond_a

    .line 122
    .line 123
    iget-object v0, p0, Lokio/Pipe$sink$1;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokio/Pipe;

    .line 124
    .line 125
    invoke-interface {v2}, Lokio/Sink;->timeout()Lokio/Timeout;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {v0}, Lokio/Pipe;->Wwwwwwwwwwwwwwwwwwwwwwww()Lokio/Sink;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-interface {v0}, Lokio/Sink;->timeout()Lokio/Timeout;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {v1}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 138
    .line 139
    .line 140
    move-result-wide v3

    .line 141
    sget-object v5, Lokio/Timeout;->Companion:Lokio/Timeout$Companion;

    .line 142
    .line 143
    invoke-virtual {v0}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 144
    .line 145
    .line 146
    move-result-wide v6

    .line 147
    invoke-virtual {v1}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 148
    .line 149
    .line 150
    move-result-wide v8

    .line 151
    invoke-virtual {v5, v6, v7, v8, v9}, Lokio/Timeout$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(JJ)J

    .line 152
    .line 153
    .line 154
    move-result-wide v5

    .line 155
    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 156
    .line 157
    invoke-virtual {v1, v5, v6, v7}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 161
    .line 162
    .line 163
    move-result v5

    .line 164
    if-eqz v5, :cond_7

    .line 165
    .line 166
    invoke-virtual {v1}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 167
    .line 168
    .line 169
    move-result-wide v5

    .line 170
    invoke-virtual {v0}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 171
    .line 172
    .line 173
    move-result v8

    .line 174
    if-eqz v8, :cond_5

    .line 175
    .line 176
    invoke-virtual {v1}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 177
    .line 178
    .line 179
    move-result-wide v8

    .line 180
    invoke-virtual {v0}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 181
    .line 182
    .line 183
    move-result-wide v10

    .line 184
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    .line 185
    .line 186
    .line 187
    move-result-wide v8

    .line 188
    invoke-virtual {v1, v8, v9}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)Lokio/Timeout;

    .line 189
    .line 190
    .line 191
    :cond_5
    :try_start_2
    invoke-interface {v2, p1, p2, p3}, Lokio/Sink;->Wwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Buffer;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 192
    .line 193
    .line 194
    invoke-virtual {v1, v3, v4, v7}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 198
    .line 199
    .line 200
    move-result p1

    .line 201
    if-eqz p1, :cond_a

    .line 202
    .line 203
    invoke-virtual {v1, v5, v6}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)Lokio/Timeout;

    .line 204
    .line 205
    .line 206
    return-void

    .line 207
    :catchall_1
    move-exception p1

    .line 208
    sget-object p2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 209
    .line 210
    invoke-virtual {v1, v3, v4, p2}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 214
    .line 215
    .line 216
    move-result p2

    .line 217
    if-eqz p2, :cond_6

    .line 218
    .line 219
    invoke-virtual {v1, v5, v6}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)Lokio/Timeout;

    .line 220
    .line 221
    .line 222
    :cond_6
    throw p1

    .line 223
    :cond_7
    invoke-virtual {v0}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 224
    .line 225
    .line 226
    move-result v5

    .line 227
    if-eqz v5, :cond_8

    .line 228
    .line 229
    invoke-virtual {v0}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 230
    .line 231
    .line 232
    move-result-wide v5

    .line 233
    invoke-virtual {v1, v5, v6}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)Lokio/Timeout;

    .line 234
    .line 235
    .line 236
    :cond_8
    :try_start_3
    invoke-interface {v2, p1, p2, p3}, Lokio/Sink;->Wwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Buffer;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 237
    .line 238
    .line 239
    invoke-virtual {v1, v3, v4, v7}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v0}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 243
    .line 244
    .line 245
    move-result p1

    .line 246
    if-eqz p1, :cond_a

    .line 247
    .line 248
    invoke-virtual {v1}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokio/Timeout;

    .line 249
    .line 250
    .line 251
    return-void

    .line 252
    :catchall_2
    move-exception p1

    .line 253
    sget-object p2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 254
    .line 255
    invoke-virtual {v1, v3, v4, p2}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v0}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 259
    .line 260
    .line 261
    move-result p2

    .line 262
    if-eqz p2, :cond_9

    .line 263
    .line 264
    invoke-virtual {v1}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokio/Timeout;

    .line 265
    .line 266
    .line 267
    :cond_9
    throw p1

    .line 268
    :cond_a
    return-void

    .line 269
    :cond_b
    :try_start_4
    new-instance p1, Ljava/io/IOException;

    .line 270
    .line 271
    invoke-direct {p1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    throw p1

    .line 275
    :cond_c
    const-string p1, "closed"

    .line 276
    .line 277
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 278
    .line 279
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 283
    :goto_2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 284
    .line 285
    .line 286
    throw p1
.end method

.method public close()V
    .locals 12

    .line 1
    iget-object v0, p0, Lokio/Pipe$sink$1;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokio/Pipe;

    .line 2
    .line 3
    invoke-virtual {v0}, Lokio/Pipe;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/concurrent/locks/ReentrantLock;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lokio/Pipe$sink$1;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokio/Pipe;

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    invoke-virtual {v1}, Lokio/Pipe;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 13
    .line 14
    .line 15
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lokio/Pipe;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokio/Sink;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    invoke-virtual {v1}, Lokio/Pipe;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_3

    .line 34
    .line 35
    invoke-virtual {v1}, Lokio/Pipe;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokio/Buffer;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v2}, Lokio/Buffer;->Kk()J

    .line 40
    .line 41
    .line 42
    move-result-wide v2

    .line 43
    const-wide/16 v4, 0x0

    .line 44
    .line 45
    cmp-long v2, v2, v4

    .line 46
    .line 47
    if-gtz v2, :cond_2

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    new-instance v1, Ljava/io/IOException;

    .line 51
    .line 52
    const-string v2, "source is closed"

    .line 53
    .line 54
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw v1

    .line 58
    :catchall_0
    move-exception v1

    .line 59
    goto/16 :goto_2

    .line 60
    .line 61
    :cond_3
    :goto_0
    const/4 v2, 0x1

    .line 62
    invoke-virtual {v1, v2}, Lokio/Pipe;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Z)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Lokio/Pipe;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/concurrent/locks/Condition;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 70
    .line 71
    .line 72
    const/4 v2, 0x0

    .line 73
    :goto_1
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    .line 75
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 76
    .line 77
    .line 78
    if-eqz v2, :cond_9

    .line 79
    .line 80
    iget-object v0, p0, Lokio/Pipe$sink$1;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokio/Pipe;

    .line 81
    .line 82
    invoke-interface {v2}, Lokio/Sink;->timeout()Lokio/Timeout;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v0}, Lokio/Pipe;->Wwwwwwwwwwwwwwwwwwwwwwww()Lokio/Sink;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-interface {v0}, Lokio/Sink;->timeout()Lokio/Timeout;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {v1}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 95
    .line 96
    .line 97
    move-result-wide v3

    .line 98
    sget-object v5, Lokio/Timeout;->Companion:Lokio/Timeout$Companion;

    .line 99
    .line 100
    invoke-virtual {v0}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 101
    .line 102
    .line 103
    move-result-wide v6

    .line 104
    invoke-virtual {v1}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 105
    .line 106
    .line 107
    move-result-wide v8

    .line 108
    invoke-virtual {v5, v6, v7, v8, v9}, Lokio/Timeout$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(JJ)J

    .line 109
    .line 110
    .line 111
    move-result-wide v5

    .line 112
    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 113
    .line 114
    invoke-virtual {v1, v5, v6, v7}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 118
    .line 119
    .line 120
    move-result v5

    .line 121
    if-eqz v5, :cond_6

    .line 122
    .line 123
    invoke-virtual {v1}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 124
    .line 125
    .line 126
    move-result-wide v5

    .line 127
    invoke-virtual {v0}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 128
    .line 129
    .line 130
    move-result v8

    .line 131
    if-eqz v8, :cond_4

    .line 132
    .line 133
    invoke-virtual {v1}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 134
    .line 135
    .line 136
    move-result-wide v8

    .line 137
    invoke-virtual {v0}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 138
    .line 139
    .line 140
    move-result-wide v10

    .line 141
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    .line 142
    .line 143
    .line 144
    move-result-wide v8

    .line 145
    invoke-virtual {v1, v8, v9}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)Lokio/Timeout;

    .line 146
    .line 147
    .line 148
    :cond_4
    :try_start_2
    invoke-interface {v2}, Lokio/Sink;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1, v3, v4, v7}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    if-eqz v0, :cond_9

    .line 159
    .line 160
    invoke-virtual {v1, v5, v6}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)Lokio/Timeout;

    .line 161
    .line 162
    .line 163
    return-void

    .line 164
    :catchall_1
    move-exception v2

    .line 165
    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 166
    .line 167
    invoke-virtual {v1, v3, v4, v7}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    if-eqz v0, :cond_5

    .line 175
    .line 176
    invoke-virtual {v1, v5, v6}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)Lokio/Timeout;

    .line 177
    .line 178
    .line 179
    :cond_5
    throw v2

    .line 180
    :cond_6
    invoke-virtual {v0}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 181
    .line 182
    .line 183
    move-result v5

    .line 184
    if-eqz v5, :cond_7

    .line 185
    .line 186
    invoke-virtual {v0}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 187
    .line 188
    .line 189
    move-result-wide v5

    .line 190
    invoke-virtual {v1, v5, v6}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)Lokio/Timeout;

    .line 191
    .line 192
    .line 193
    :cond_7
    :try_start_3
    invoke-interface {v2}, Lokio/Sink;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 194
    .line 195
    .line 196
    invoke-virtual {v1, v3, v4, v7}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    if-eqz v0, :cond_9

    .line 204
    .line 205
    invoke-virtual {v1}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokio/Timeout;

    .line 206
    .line 207
    .line 208
    return-void

    .line 209
    :catchall_2
    move-exception v2

    .line 210
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 211
    .line 212
    invoke-virtual {v1, v3, v4, v5}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    if-eqz v0, :cond_8

    .line 220
    .line 221
    invoke-virtual {v1}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokio/Timeout;

    .line 222
    .line 223
    .line 224
    :cond_8
    throw v2

    .line 225
    :cond_9
    return-void

    .line 226
    :goto_2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 227
    .line 228
    .line 229
    throw v1
.end method

.method public flush()V
    .locals 12

    .line 1
    iget-object v0, p0, Lokio/Pipe$sink$1;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokio/Pipe;

    .line 2
    .line 3
    invoke-virtual {v0}, Lokio/Pipe;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/concurrent/locks/ReentrantLock;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lokio/Pipe$sink$1;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokio/Pipe;

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    invoke-virtual {v1}, Lokio/Pipe;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-nez v2, :cond_a

    .line 17
    .line 18
    invoke-virtual {v1}, Lokio/Pipe;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-nez v2, :cond_9

    .line 23
    .line 24
    invoke-virtual {v1}, Lokio/Pipe;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokio/Sink;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    invoke-virtual {v1}, Lokio/Pipe;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    invoke-virtual {v1}, Lokio/Pipe;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokio/Buffer;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1}, Lokio/Buffer;->Kk()J

    .line 42
    .line 43
    .line 44
    move-result-wide v1

    .line 45
    const-wide/16 v3, 0x0

    .line 46
    .line 47
    cmp-long v1, v1, v3

    .line 48
    .line 49
    if-gtz v1, :cond_1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    new-instance v1, Ljava/io/IOException;

    .line 53
    .line 54
    const-string v2, "source is closed"

    .line 55
    .line 56
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw v1

    .line 60
    :catchall_0
    move-exception v1

    .line 61
    goto/16 :goto_2

    .line 62
    .line 63
    :cond_2
    :goto_0
    const/4 v2, 0x0

    .line 64
    :goto_1
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    .line 66
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 67
    .line 68
    .line 69
    if-eqz v2, :cond_8

    .line 70
    .line 71
    iget-object v0, p0, Lokio/Pipe$sink$1;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokio/Pipe;

    .line 72
    .line 73
    invoke-interface {v2}, Lokio/Sink;->timeout()Lokio/Timeout;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v0}, Lokio/Pipe;->Wwwwwwwwwwwwwwwwwwwwwwww()Lokio/Sink;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-interface {v0}, Lokio/Sink;->timeout()Lokio/Timeout;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v1}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 86
    .line 87
    .line 88
    move-result-wide v3

    .line 89
    sget-object v5, Lokio/Timeout;->Companion:Lokio/Timeout$Companion;

    .line 90
    .line 91
    invoke-virtual {v0}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 92
    .line 93
    .line 94
    move-result-wide v6

    .line 95
    invoke-virtual {v1}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 96
    .line 97
    .line 98
    move-result-wide v8

    .line 99
    invoke-virtual {v5, v6, v7, v8, v9}, Lokio/Timeout$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(JJ)J

    .line 100
    .line 101
    .line 102
    move-result-wide v5

    .line 103
    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 104
    .line 105
    invoke-virtual {v1, v5, v6, v7}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 109
    .line 110
    .line 111
    move-result v5

    .line 112
    if-eqz v5, :cond_5

    .line 113
    .line 114
    invoke-virtual {v1}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 115
    .line 116
    .line 117
    move-result-wide v5

    .line 118
    invoke-virtual {v0}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 119
    .line 120
    .line 121
    move-result v8

    .line 122
    if-eqz v8, :cond_3

    .line 123
    .line 124
    invoke-virtual {v1}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 125
    .line 126
    .line 127
    move-result-wide v8

    .line 128
    invoke-virtual {v0}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 129
    .line 130
    .line 131
    move-result-wide v10

    .line 132
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    .line 133
    .line 134
    .line 135
    move-result-wide v8

    .line 136
    invoke-virtual {v1, v8, v9}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)Lokio/Timeout;

    .line 137
    .line 138
    .line 139
    :cond_3
    :try_start_1
    invoke-interface {v2}, Lokio/Sink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1, v3, v4, v7}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    if-eqz v0, :cond_8

    .line 150
    .line 151
    invoke-virtual {v1, v5, v6}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)Lokio/Timeout;

    .line 152
    .line 153
    .line 154
    return-void

    .line 155
    :catchall_1
    move-exception v2

    .line 156
    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 157
    .line 158
    invoke-virtual {v1, v3, v4, v7}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    if-eqz v0, :cond_4

    .line 166
    .line 167
    invoke-virtual {v1, v5, v6}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)Lokio/Timeout;

    .line 168
    .line 169
    .line 170
    :cond_4
    throw v2

    .line 171
    :cond_5
    invoke-virtual {v0}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 172
    .line 173
    .line 174
    move-result v5

    .line 175
    if-eqz v5, :cond_6

    .line 176
    .line 177
    invoke-virtual {v0}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 178
    .line 179
    .line 180
    move-result-wide v5

    .line 181
    invoke-virtual {v1, v5, v6}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)Lokio/Timeout;

    .line 182
    .line 183
    .line 184
    :cond_6
    :try_start_2
    invoke-interface {v2}, Lokio/Sink;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 185
    .line 186
    .line 187
    invoke-virtual {v1, v3, v4, v7}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    if-eqz v0, :cond_8

    .line 195
    .line 196
    invoke-virtual {v1}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokio/Timeout;

    .line 197
    .line 198
    .line 199
    return-void

    .line 200
    :catchall_2
    move-exception v2

    .line 201
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 202
    .line 203
    invoke-virtual {v1, v3, v4, v5}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    if-eqz v0, :cond_7

    .line 211
    .line 212
    invoke-virtual {v1}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokio/Timeout;

    .line 213
    .line 214
    .line 215
    :cond_7
    throw v2

    .line 216
    :cond_8
    return-void

    .line 217
    :cond_9
    :try_start_3
    new-instance v1, Ljava/io/IOException;

    .line 218
    .line 219
    const-string v2, "canceled"

    .line 220
    .line 221
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    throw v1

    .line 225
    :cond_a
    const-string v1, "closed"

    .line 226
    .line 227
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 228
    .line 229
    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 233
    :goto_2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 234
    .line 235
    .line 236
    throw v1
.end method

.method public timeout()Lokio/Timeout;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokio/Pipe$sink$1;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Timeout;

    .line 2
    .line 3
    return-object v0
.end method
