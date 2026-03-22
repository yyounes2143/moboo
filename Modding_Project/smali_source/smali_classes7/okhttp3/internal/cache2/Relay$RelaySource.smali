.class public final Lokhttp3/internal/cache2/Relay$RelaySource;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lokio/Source;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/cache2/Relay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "RelaySource"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0080\u0004\u0018\u00002\u00020\u0001J\u001f\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rR\u0014\u0010\t\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u0018\u0010\u0013\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R\u0016\u0010\u0016\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0017"
    }
    d2 = {
        "Lokhttp3/internal/cache2/Relay$RelaySource;",
        "Lokio/Source;",
        "Lokio/Buffer;",
        "sink",
        "",
        "byteCount",
        "read",
        "(Lokio/Buffer;J)J",
        "Lokio/Timeout;",
        "timeout",
        "()Lokio/Timeout;",
        "",
        "close",
        "()V",
        "Wwwwwwwwwwwwwwwwwwwwwwwww",
        "Lokio/Timeout;",
        "Lokhttp3/internal/cache2/FileOperator;",
        "Wwwwwwwwwwwwwwwwwwwwwwww",
        "Lokhttp3/internal/cache2/FileOperator;",
        "fileOperator",
        "Wwwwwwwwwwwwwwwwwwwwwww",
        "J",
        "sourcePos",
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
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/cache2/Relay;

.field public Wwwwwwwwwwwwwwwwwwwwwww:J

.field public Wwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/cache2/FileOperator;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Timeout;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/cache2/FileOperator;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/cache2/FileOperator;

    .line 8
    .line 9
    iget-object v1, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->Wwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/cache2/Relay;

    .line 10
    .line 11
    monitor-enter v1

    .line 12
    :try_start_0
    invoke-virtual {v1}, Lokhttp3/internal/cache2/Relay;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    add-int/lit8 v2, v2, -0x1

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Lokhttp3/internal/cache2/Relay;->Wwwwwwwwwwwwwwwwwwwwww(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Lokhttp3/internal/cache2/Relay;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-nez v2, :cond_1

    .line 26
    .line 27
    invoke-virtual {v1}, Lokhttp3/internal/cache2/Relay;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/io/RandomAccessFile;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v1, v0}, Lokhttp3/internal/cache2/Relay;->Wwwwwwwwwwwwwwwwwwwwwww(Ljava/io/RandomAccessFile;)V

    .line 32
    .line 33
    .line 34
    move-object v0, v2

    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    goto :goto_2

    .line 38
    :cond_1
    :goto_0
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    monitor-exit v1

    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    :goto_1
    return-void

    .line 44
    :cond_2
    invoke-static {v0}, Lokhttp3/internal/Util;->Wwwwwwwwwwwwwwwwwwwwww(Ljava/io/Closeable;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :goto_2
    monitor-exit v1

    .line 49
    throw v0
.end method

.method public read(Lokio/Buffer;J)J
    .locals 19
    .param p1    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-wide/from16 v2, p2

    .line 4
    .line 5
    iget-object v0, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/cache2/FileOperator;

    .line 6
    .line 7
    if-eqz v0, :cond_7

    .line 8
    .line 9
    iget-object v4, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->Wwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/cache2/Relay;

    .line 10
    .line 11
    monitor-enter v4

    .line 12
    :goto_0
    :try_start_0
    invoke-virtual {v4}, Lokhttp3/internal/cache2/Relay;->Wwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 13
    .line 14
    .line 15
    move-result-wide v5

    .line 16
    iget-wide v7, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->Wwwwwwwwwwwwwwwwwwwwwww:J

    .line 17
    .line 18
    cmp-long v0, v7, v5

    .line 19
    .line 20
    const/4 v5, 0x2

    .line 21
    const-wide/16 v6, -0x1

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {v4}, Lokhttp3/internal/cache2/Relay;->Wwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 26
    .line 27
    .line 28
    move-result-wide v8

    .line 29
    invoke-virtual {v4}, Lokhttp3/internal/cache2/Relay;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokio/Buffer;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lokio/Buffer;->Kk()J

    .line 34
    .line 35
    .line 36
    move-result-wide v10

    .line 37
    sub-long/2addr v8, v10

    .line 38
    iget-wide v10, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->Wwwwwwwwwwwwwwwwwwwwwww:J

    .line 39
    .line 40
    cmp-long v0, v10, v8

    .line 41
    .line 42
    if-gez v0, :cond_0

    .line 43
    .line 44
    move v0, v5

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    invoke-virtual {v4}, Lokhttp3/internal/cache2/Relay;->Wwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 47
    .line 48
    .line 49
    move-result-wide v5

    .line 50
    iget-wide v10, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->Wwwwwwwwwwwwwwwwwwwwwww:J

    .line 51
    .line 52
    sub-long/2addr v5, v10

    .line 53
    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->min(JJ)J

    .line 54
    .line 55
    .line 56
    move-result-wide v14

    .line 57
    invoke-virtual {v4}, Lokhttp3/internal/cache2/Relay;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokio/Buffer;

    .line 58
    .line 59
    .line 60
    move-result-object v10

    .line 61
    iget-wide v2, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->Wwwwwwwwwwwwwwwwwwwwwww:J

    .line 62
    .line 63
    sub-long v12, v2, v8

    .line 64
    .line 65
    move-object/from16 v11, p1

    .line 66
    .line 67
    invoke-virtual/range {v10 .. v15}, Lokio/Buffer;->Kkkkkkkkkkkkkkkkkkk(Lokio/Buffer;JJ)Lokio/Buffer;

    .line 68
    .line 69
    .line 70
    iget-wide v2, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->Wwwwwwwwwwwwwwwwwwwwwww:J

    .line 71
    .line 72
    add-long/2addr v2, v14

    .line 73
    iput-wide v2, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->Wwwwwwwwwwwwwwwwwwwwwww:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    .line 75
    monitor-exit v4

    .line 76
    return-wide v14

    .line 77
    :catchall_0
    move-exception v0

    .line 78
    goto/16 :goto_5

    .line 79
    .line 80
    :cond_1
    :try_start_1
    invoke-virtual {v4}, Lokhttp3/internal/cache2/Relay;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 81
    .line 82
    .line 83
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    if-eqz v0, :cond_2

    .line 85
    .line 86
    monitor-exit v4

    .line 87
    return-wide v6

    .line 88
    :cond_2
    :try_start_2
    invoke-virtual {v4}, Lokhttp3/internal/cache2/Relay;->Wwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/Thread;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    if-eqz v0, :cond_3

    .line 93
    .line 94
    iget-object v0, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Timeout;

    .line 95
    .line 96
    invoke-virtual {v0, v4}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v4, v0}, Lokhttp3/internal/cache2/Relay;->Wwwwwwwwwwwwwwwwwwww(Ljava/lang/Thread;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 105
    .line 106
    .line 107
    const/4 v0, 0x1

    .line 108
    :goto_1
    monitor-exit v4

    .line 109
    const-wide/16 v11, 0x20

    .line 110
    .line 111
    if-ne v0, v5, :cond_4

    .line 112
    .line 113
    iget-object v0, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->Wwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/cache2/Relay;

    .line 114
    .line 115
    invoke-virtual {v0}, Lokhttp3/internal/cache2/Relay;->Wwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 116
    .line 117
    .line 118
    move-result-wide v4

    .line 119
    iget-wide v6, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->Wwwwwwwwwwwwwwwwwwwwwww:J

    .line 120
    .line 121
    sub-long/2addr v4, v6

    .line 122
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 123
    .line 124
    .line 125
    move-result-wide v9

    .line 126
    iget-object v5, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/cache2/FileOperator;

    .line 127
    .line 128
    iget-wide v2, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->Wwwwwwwwwwwwwwwwwwwwwww:J

    .line 129
    .line 130
    add-long v6, v2, v11

    .line 131
    .line 132
    move-object/from16 v8, p1

    .line 133
    .line 134
    invoke-virtual/range {v5 .. v10}, Lokhttp3/internal/cache2/FileOperator;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(JLokio/Buffer;J)V

    .line 135
    .line 136
    .line 137
    iget-wide v2, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->Wwwwwwwwwwwwwwwwwwwwwww:J

    .line 138
    .line 139
    add-long/2addr v2, v9

    .line 140
    iput-wide v2, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->Wwwwwwwwwwwwwwwwwwwwwww:J

    .line 141
    .line 142
    return-wide v9

    .line 143
    :cond_4
    const/4 v4, 0x0

    .line 144
    :try_start_3
    iget-object v0, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->Wwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/cache2/Relay;

    .line 145
    .line 146
    invoke-virtual {v0}, Lokhttp3/internal/cache2/Relay;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokio/Source;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    iget-object v5, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->Wwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/cache2/Relay;

    .line 151
    .line 152
    invoke-virtual {v5}, Lokhttp3/internal/cache2/Relay;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()Lokio/Buffer;

    .line 153
    .line 154
    .line 155
    move-result-object v5

    .line 156
    iget-object v8, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->Wwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/cache2/Relay;

    .line 157
    .line 158
    invoke-virtual {v8}, Lokhttp3/internal/cache2/Relay;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 159
    .line 160
    .line 161
    move-result-wide v8

    .line 162
    invoke-interface {v0, v5, v8, v9}, Lokio/Source;->read(Lokio/Buffer;J)J

    .line 163
    .line 164
    .line 165
    move-result-wide v13

    .line 166
    cmp-long v0, v13, v6

    .line 167
    .line 168
    if-nez v0, :cond_5

    .line 169
    .line 170
    iget-object v0, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->Wwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/cache2/Relay;

    .line 171
    .line 172
    invoke-virtual {v0}, Lokhttp3/internal/cache2/Relay;->Wwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 173
    .line 174
    .line 175
    move-result-wide v2

    .line 176
    invoke-virtual {v0, v2, v3}, Lokhttp3/internal/cache2/Relay;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 177
    .line 178
    .line 179
    iget-object v2, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->Wwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/cache2/Relay;

    .line 180
    .line 181
    monitor-enter v2

    .line 182
    :try_start_4
    invoke-virtual {v2, v4}, Lokhttp3/internal/cache2/Relay;->Wwwwwwwwwwwwwwwwwwww(Ljava/lang/Thread;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 186
    .line 187
    .line 188
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 189
    .line 190
    monitor-exit v2

    .line 191
    return-wide v6

    .line 192
    :catchall_1
    move-exception v0

    .line 193
    monitor-exit v2

    .line 194
    throw v0

    .line 195
    :catchall_2
    move-exception v0

    .line 196
    goto/16 :goto_4

    .line 197
    .line 198
    :cond_5
    :try_start_5
    invoke-static {v13, v14, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 199
    .line 200
    .line 201
    move-result-wide v9

    .line 202
    iget-object v0, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->Wwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/cache2/Relay;

    .line 203
    .line 204
    invoke-virtual {v0}, Lokhttp3/internal/cache2/Relay;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()Lokio/Buffer;

    .line 205
    .line 206
    .line 207
    move-result-object v5

    .line 208
    const-wide/16 v7, 0x0

    .line 209
    .line 210
    move-object/from16 v6, p1

    .line 211
    .line 212
    invoke-virtual/range {v5 .. v10}, Lokio/Buffer;->Kkkkkkkkkkkkkkkkkkk(Lokio/Buffer;JJ)Lokio/Buffer;

    .line 213
    .line 214
    .line 215
    iget-wide v2, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->Wwwwwwwwwwwwwwwwwwwwwww:J

    .line 216
    .line 217
    add-long/2addr v2, v9

    .line 218
    iput-wide v2, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->Wwwwwwwwwwwwwwwwwwwwwww:J

    .line 219
    .line 220
    move-wide/from16 v17, v13

    .line 221
    .line 222
    iget-object v13, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/cache2/FileOperator;

    .line 223
    .line 224
    iget-object v0, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->Wwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/cache2/Relay;

    .line 225
    .line 226
    invoke-virtual {v0}, Lokhttp3/internal/cache2/Relay;->Wwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 227
    .line 228
    .line 229
    move-result-wide v2

    .line 230
    add-long v14, v2, v11

    .line 231
    .line 232
    iget-object v0, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->Wwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/cache2/Relay;

    .line 233
    .line 234
    invoke-virtual {v0}, Lokhttp3/internal/cache2/Relay;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()Lokio/Buffer;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    invoke-virtual {v0}, Lokio/Buffer;->Kkkkkkkkkkkkkkkkkkkkkk()Lokio/Buffer;

    .line 239
    .line 240
    .line 241
    move-result-object v16

    .line 242
    invoke-virtual/range {v13 .. v18}, Lokhttp3/internal/cache2/FileOperator;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(JLokio/Buffer;J)V

    .line 243
    .line 244
    .line 245
    move-wide/from16 v2, v17

    .line 246
    .line 247
    iget-object v5, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->Wwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/cache2/Relay;

    .line 248
    .line 249
    monitor-enter v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 250
    :try_start_6
    invoke-virtual {v5}, Lokhttp3/internal/cache2/Relay;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokio/Buffer;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    invoke-virtual {v5}, Lokhttp3/internal/cache2/Relay;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()Lokio/Buffer;

    .line 255
    .line 256
    .line 257
    move-result-object v6

    .line 258
    invoke-virtual {v0, v6, v2, v3}, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Buffer;J)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v5}, Lokhttp3/internal/cache2/Relay;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokio/Buffer;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    invoke-virtual {v0}, Lokio/Buffer;->Kk()J

    .line 266
    .line 267
    .line 268
    move-result-wide v6

    .line 269
    invoke-virtual {v5}, Lokhttp3/internal/cache2/Relay;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 270
    .line 271
    .line 272
    move-result-wide v11

    .line 273
    cmp-long v0, v6, v11

    .line 274
    .line 275
    if-lez v0, :cond_6

    .line 276
    .line 277
    invoke-virtual {v5}, Lokhttp3/internal/cache2/Relay;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokio/Buffer;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    invoke-virtual {v5}, Lokhttp3/internal/cache2/Relay;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokio/Buffer;

    .line 282
    .line 283
    .line 284
    move-result-object v6

    .line 285
    invoke-virtual {v6}, Lokio/Buffer;->Kk()J

    .line 286
    .line 287
    .line 288
    move-result-wide v6

    .line 289
    invoke-virtual {v5}, Lokhttp3/internal/cache2/Relay;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 290
    .line 291
    .line 292
    move-result-wide v11

    .line 293
    sub-long/2addr v6, v11

    .line 294
    invoke-virtual {v0, v6, v7}, Lokio/Buffer;->skip(J)V

    .line 295
    .line 296
    .line 297
    goto :goto_2

    .line 298
    :catchall_3
    move-exception v0

    .line 299
    goto :goto_3

    .line 300
    :cond_6
    :goto_2
    invoke-virtual {v5}, Lokhttp3/internal/cache2/Relay;->Wwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 301
    .line 302
    .line 303
    move-result-wide v6

    .line 304
    add-long/2addr v6, v2

    .line 305
    invoke-virtual {v5, v6, v7}, Lokhttp3/internal/cache2/Relay;->Wwwwwwwwwwwwwwwwwwwww(J)V

    .line 306
    .line 307
    .line 308
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 309
    .line 310
    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 311
    iget-object v2, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->Wwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/cache2/Relay;

    .line 312
    .line 313
    monitor-enter v2

    .line 314
    :try_start_8
    invoke-virtual {v2, v4}, Lokhttp3/internal/cache2/Relay;->Wwwwwwwwwwwwwwwwwwww(Ljava/lang/Thread;)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 318
    .line 319
    .line 320
    monitor-exit v2

    .line 321
    return-wide v9

    .line 322
    :catchall_4
    move-exception v0

    .line 323
    monitor-exit v2

    .line 324
    throw v0

    .line 325
    :goto_3
    :try_start_9
    monitor-exit v5

    .line 326
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 327
    :goto_4
    iget-object v2, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->Wwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/cache2/Relay;

    .line 328
    .line 329
    monitor-enter v2

    .line 330
    :try_start_a
    invoke-virtual {v2, v4}, Lokhttp3/internal/cache2/Relay;->Wwwwwwwwwwwwwwwwwwww(Ljava/lang/Thread;)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 334
    .line 335
    .line 336
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 337
    .line 338
    monitor-exit v2

    .line 339
    throw v0

    .line 340
    :catchall_5
    move-exception v0

    .line 341
    monitor-exit v2

    .line 342
    throw v0

    .line 343
    :goto_5
    monitor-exit v4

    .line 344
    throw v0

    .line 345
    :cond_7
    const-string v0, "Check failed."

    .line 346
    .line 347
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 348
    .line 349
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    throw v2
.end method

.method public timeout()Lokio/Timeout;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Timeout;

    .line 2
    .line 3
    return-object v0
.end method
