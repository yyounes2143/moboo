.class final Lokhttp3/MultipartReader$PartSource;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lokio/Source;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/MultipartReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PartSource"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0082\u0004\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u001f\u0010\t\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rR\u0014\u0010\u000c\u001a\u00020\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lokhttp3/MultipartReader$PartSource;",
        "Lokio/Source;",
        "",
        "close",
        "()V",
        "Lokio/Buffer;",
        "sink",
        "",
        "byteCount",
        "read",
        "(Lokio/Buffer;J)J",
        "Lokio/Timeout;",
        "timeout",
        "()Lokio/Timeout;",
        "Wwwwwwwwwwwwwwwwwwwwwwwww",
        "Lokio/Timeout;",
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


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/MultipartReader;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Timeout;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# virtual methods
.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lokhttp3/MultipartReader$PartSource;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/MultipartReader;

    .line 2
    .line 3
    invoke-static {v0}, Lokhttp3/MultipartReader;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/MultipartReader;)Lokhttp3/MultipartReader$PartSource;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lokhttp3/MultipartReader$PartSource;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/MultipartReader;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-static {v0, v1}, Lokhttp3/MultipartReader;->Kkkkkkkkkkkkkkkkkkkkkkk(Lokhttp3/MultipartReader;Lokhttp3/MultipartReader$PartSource;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public read(Lokio/Buffer;J)J
    .locals 18
    .param p1    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-wide/from16 v2, p2

    .line 6
    .line 7
    const-wide/16 v4, 0x0

    .line 8
    .line 9
    cmp-long v6, v2, v4

    .line 10
    .line 11
    if-ltz v6, :cond_a

    .line 12
    .line 13
    iget-object v6, v1, Lokhttp3/MultipartReader$PartSource;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/MultipartReader;

    .line 14
    .line 15
    invoke-static {v6}, Lokhttp3/MultipartReader;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/MultipartReader;)Lokhttp3/MultipartReader$PartSource;

    .line 16
    .line 17
    .line 18
    move-result-object v6

    .line 19
    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v6

    .line 23
    if-eqz v6, :cond_9

    .line 24
    .line 25
    iget-object v6, v1, Lokhttp3/MultipartReader$PartSource;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/MultipartReader;

    .line 26
    .line 27
    invoke-static {v6}, Lokhttp3/MultipartReader;->Wwwwwwwwwwwwww(Lokhttp3/MultipartReader;)Lokio/BufferedSource;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    invoke-interface {v6}, Lokio/Source;->timeout()Lokio/Timeout;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    iget-object v7, v1, Lokhttp3/MultipartReader$PartSource;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Timeout;

    .line 36
    .line 37
    iget-object v8, v1, Lokhttp3/MultipartReader$PartSource;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/MultipartReader;

    .line 38
    .line 39
    invoke-virtual {v6}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 40
    .line 41
    .line 42
    move-result-wide v9

    .line 43
    sget-object v11, Lokio/Timeout;->Companion:Lokio/Timeout$Companion;

    .line 44
    .line 45
    invoke-virtual {v7}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 46
    .line 47
    .line 48
    move-result-wide v12

    .line 49
    invoke-virtual {v6}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 50
    .line 51
    .line 52
    move-result-wide v14

    .line 53
    invoke-virtual {v11, v12, v13, v14, v15}, Lokio/Timeout$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(JJ)J

    .line 54
    .line 55
    .line 56
    move-result-wide v11

    .line 57
    sget-object v13, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 58
    .line 59
    invoke-virtual {v6, v11, v12, v13}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v6}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 63
    .line 64
    .line 65
    move-result v11

    .line 66
    if-eqz v11, :cond_4

    .line 67
    .line 68
    invoke-virtual {v6}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 69
    .line 70
    .line 71
    move-result-wide v11

    .line 72
    invoke-virtual {v7}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 73
    .line 74
    .line 75
    move-result v16

    .line 76
    if-eqz v16, :cond_0

    .line 77
    .line 78
    move-wide/from16 v16, v4

    .line 79
    .line 80
    invoke-virtual {v6}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 81
    .line 82
    .line 83
    move-result-wide v4

    .line 84
    invoke-virtual {v7}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 85
    .line 86
    .line 87
    move-result-wide v14

    .line 88
    invoke-static {v4, v5, v14, v15}, Ljava/lang/Math;->min(JJ)J

    .line 89
    .line 90
    .line 91
    move-result-wide v4

    .line 92
    invoke-virtual {v6, v4, v5}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)Lokio/Timeout;

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_0
    move-wide/from16 v16, v4

    .line 97
    .line 98
    :goto_0
    :try_start_0
    invoke-static {v8, v2, v3}, Lokhttp3/MultipartReader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/MultipartReader;J)J

    .line 99
    .line 100
    .line 101
    move-result-wide v2

    .line 102
    cmp-long v4, v2, v16

    .line 103
    .line 104
    if-nez v4, :cond_1

    .line 105
    .line 106
    const-wide/16 v14, -0x1

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_1
    invoke-static {v8}, Lokhttp3/MultipartReader;->Wwwwwwwwwwwwww(Lokhttp3/MultipartReader;)Lokio/BufferedSource;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    invoke-interface {v4, v0, v2, v3}, Lokio/Source;->read(Lokio/Buffer;J)J

    .line 114
    .line 115
    .line 116
    move-result-wide v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    :goto_1
    invoke-virtual {v6, v9, v10, v13}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v7}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-eqz v0, :cond_2

    .line 125
    .line 126
    invoke-virtual {v6, v11, v12}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)Lokio/Timeout;

    .line 127
    .line 128
    .line 129
    :cond_2
    return-wide v14

    .line 130
    :catchall_0
    move-exception v0

    .line 131
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 132
    .line 133
    invoke-virtual {v6, v9, v10, v2}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v7}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    if-eqz v2, :cond_3

    .line 141
    .line 142
    invoke-virtual {v6, v11, v12}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)Lokio/Timeout;

    .line 143
    .line 144
    .line 145
    :cond_3
    throw v0

    .line 146
    :cond_4
    move-wide/from16 v16, v4

    .line 147
    .line 148
    invoke-virtual {v7}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 149
    .line 150
    .line 151
    move-result v4

    .line 152
    if-eqz v4, :cond_5

    .line 153
    .line 154
    invoke-virtual {v7}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 155
    .line 156
    .line 157
    move-result-wide v4

    .line 158
    invoke-virtual {v6, v4, v5}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)Lokio/Timeout;

    .line 159
    .line 160
    .line 161
    :cond_5
    :try_start_1
    invoke-static {v8, v2, v3}, Lokhttp3/MultipartReader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/MultipartReader;J)J

    .line 162
    .line 163
    .line 164
    move-result-wide v2

    .line 165
    cmp-long v4, v2, v16

    .line 166
    .line 167
    if-nez v4, :cond_6

    .line 168
    .line 169
    const-wide/16 v14, -0x1

    .line 170
    .line 171
    goto :goto_2

    .line 172
    :cond_6
    invoke-static {v8}, Lokhttp3/MultipartReader;->Wwwwwwwwwwwwww(Lokhttp3/MultipartReader;)Lokio/BufferedSource;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    invoke-interface {v4, v0, v2, v3}, Lokio/Source;->read(Lokio/Buffer;J)J

    .line 177
    .line 178
    .line 179
    move-result-wide v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 180
    :goto_2
    invoke-virtual {v6, v9, v10, v13}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v7}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    if-eqz v0, :cond_7

    .line 188
    .line 189
    invoke-virtual {v6}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokio/Timeout;

    .line 190
    .line 191
    .line 192
    :cond_7
    return-wide v14

    .line 193
    :catchall_1
    move-exception v0

    .line 194
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 195
    .line 196
    invoke-virtual {v6, v9, v10, v2}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v7}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 200
    .line 201
    .line 202
    move-result v2

    .line 203
    if-eqz v2, :cond_8

    .line 204
    .line 205
    invoke-virtual {v6}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokio/Timeout;

    .line 206
    .line 207
    .line 208
    :cond_8
    throw v0

    .line 209
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 210
    .line 211
    const-string v2, "closed"

    .line 212
    .line 213
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    throw v0

    .line 217
    :cond_a
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    const-string v2, "byteCount < 0: "

    .line 222
    .line 223
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 228
    .line 229
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    throw v2
.end method

.method public timeout()Lokio/Timeout;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/MultipartReader$PartSource;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Timeout;

    .line 2
    .line 3
    return-object v0
.end method
