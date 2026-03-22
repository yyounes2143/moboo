.class public Lorg/apache/commons/io/input/Tailer;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final Wwwwwwwwwwwwwwwww:Ljava/nio/charset/Charset;


# instance fields
.field public volatile Wwwwwwwwwwwwwwwwww:Z

.field public final Wwwwwwwwwwwwwwwwwww:Z

.field public final Wwwwwwwwwwwwwwwwwwww:Lorg/apache/commons/io/input/TailerListener;

.field public final Wwwwwwwwwwwwwwwwwwwww:Z

.field public final Wwwwwwwwwwwwwwwwwwwwww:J

.field public final Wwwwwwwwwwwwwwwwwwwwwww:Ljava/nio/charset/Charset;

.field public final Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/io/File;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwww:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lorg/apache/commons/io/input/Tailer;->Wwwwwwwwwwwwwwwww:Ljava/nio/charset/Charset;

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/apache/commons/io/input/Tailer;->Wwwwwwwwwwwwwwwwww:Z

    .line 3
    .line 4
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/RandomAccessFile;)J
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 2
    .line 3
    const/16 v1, 0x40

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    const/4 v3, 0x0

    .line 13
    move-wide v4, v1

    .line 14
    move v6, v3

    .line 15
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/io/input/Tailer;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 16
    .line 17
    .line 18
    move-result v7

    .line 19
    if-eqz v7, :cond_5

    .line 20
    .line 21
    iget-object v7, p0, Lorg/apache/commons/io/input/Tailer;->Wwwwwwwwwwwwwwwwwwwwwwwww:[B

    .line 22
    .line 23
    invoke-virtual {p1, v7}, Ljava/io/RandomAccessFile;->read([B)I

    .line 24
    .line 25
    .line 26
    move-result v7

    .line 27
    const/4 v8, -0x1

    .line 28
    if-eq v7, v8, :cond_5

    .line 29
    .line 30
    move v8, v3

    .line 31
    :goto_1
    if-ge v8, v7, :cond_4

    .line 32
    .line 33
    iget-object v9, p0, Lorg/apache/commons/io/input/Tailer;->Wwwwwwwwwwwwwwwwwwwwwwwww:[B

    .line 34
    .line 35
    aget-byte v9, v9, v8

    .line 36
    .line 37
    const/16 v10, 0xa

    .line 38
    .line 39
    const-wide/16 v11, 0x1

    .line 40
    .line 41
    if-eq v9, v10, :cond_3

    .line 42
    .line 43
    const/16 v10, 0xd

    .line 44
    .line 45
    if-eq v9, v10, :cond_1

    .line 46
    .line 47
    if-eqz v6, :cond_0

    .line 48
    .line 49
    iget-object v1, p0, Lorg/apache/commons/io/input/Tailer;->Wwwwwwwwwwwwwwwwwwww:Lorg/apache/commons/io/input/TailerListener;

    .line 50
    .line 51
    new-instance v2, Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    iget-object v10, p0, Lorg/apache/commons/io/input/Tailer;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/nio/charset/Charset;

    .line 58
    .line 59
    invoke-direct {v2, v6, v10}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 60
    .line 61
    .line 62
    invoke-interface {v1, v2}, Lorg/apache/commons/io/input/TailerListener;->handle(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 66
    .line 67
    .line 68
    int-to-long v1, v8

    .line 69
    add-long/2addr v1, v4

    .line 70
    add-long/2addr v1, v11

    .line 71
    move v6, v3

    .line 72
    goto :goto_2

    .line 73
    :catchall_0
    move-exception p1

    .line 74
    goto :goto_4

    .line 75
    :cond_0
    :goto_2
    invoke-virtual {v0, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 76
    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_1
    if-eqz v6, :cond_2

    .line 80
    .line 81
    invoke-virtual {v0, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 82
    .line 83
    .line 84
    :cond_2
    const/4 v6, 0x1

    .line 85
    goto :goto_3

    .line 86
    :cond_3
    iget-object v1, p0, Lorg/apache/commons/io/input/Tailer;->Wwwwwwwwwwwwwwwwwwww:Lorg/apache/commons/io/input/TailerListener;

    .line 87
    .line 88
    new-instance v2, Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    iget-object v9, p0, Lorg/apache/commons/io/input/Tailer;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/nio/charset/Charset;

    .line 95
    .line 96
    invoke-direct {v2, v6, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 97
    .line 98
    .line 99
    invoke-interface {v1, v2}, Lorg/apache/commons/io/input/TailerListener;->handle(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 103
    .line 104
    .line 105
    int-to-long v1, v8

    .line 106
    add-long/2addr v1, v4

    .line 107
    add-long/2addr v1, v11

    .line 108
    move v6, v3

    .line 109
    :goto_3
    add-int/lit8 v8, v8, 0x1

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_4
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 113
    .line 114
    .line 115
    move-result-wide v4

    .line 116
    goto :goto_0

    .line 117
    :cond_5
    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 118
    .line 119
    .line 120
    iget-object p1, p0, Lorg/apache/commons/io/input/Tailer;->Wwwwwwwwwwwwwwwwwwww:Lorg/apache/commons/io/input/TailerListener;

    .line 121
    .line 122
    instance-of v3, p1, Lorg/apache/commons/io/input/TailerListenerAdapter;

    .line 123
    .line 124
    if-eqz v3, :cond_6

    .line 125
    .line 126
    check-cast p1, Lorg/apache/commons/io/input/TailerListenerAdapter;

    .line 127
    .line 128
    invoke-virtual {p1}, Lorg/apache/commons/io/input/TailerListenerAdapter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    .line 130
    .line 131
    :cond_6
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 132
    .line 133
    .line 134
    return-wide v1

    .line 135
    :goto_4
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 136
    :catchall_1
    move-exception v1

    .line 137
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 138
    .line 139
    .line 140
    goto :goto_5

    .line 141
    :catchall_2
    move-exception v0

    .line 142
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 143
    .line 144
    .line 145
    :goto_5
    throw v1
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/io/input/Tailer;->Wwwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    return v0
.end method

.method public run()V
    .locals 13

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    move-wide v3, v0

    .line 5
    move-wide v5, v3

    .line 6
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/io/input/Tailer;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 7
    .line 8
    .line 9
    move-result v7
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    const-string v8, "r"

    .line 11
    .line 12
    if-eqz v7, :cond_2

    .line 13
    .line 14
    if-nez v2, :cond_2

    .line 15
    .line 16
    :try_start_1
    new-instance v7, Ljava/io/RandomAccessFile;

    .line 17
    .line 18
    iget-object v9, p0, Lorg/apache/commons/io/input/Tailer;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/io/File;

    .line 19
    .line 20
    invoke-direct {v7, v9, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    .line 22
    .line 23
    move-object v2, v7

    .line 24
    goto :goto_1

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    goto/16 :goto_11

    .line 27
    .line 28
    :catch_0
    move-exception v0

    .line 29
    goto/16 :goto_e

    .line 30
    .line 31
    :catch_1
    move-exception v0

    .line 32
    goto/16 :goto_f

    .line 33
    .line 34
    :catch_2
    :try_start_2
    iget-object v7, p0, Lorg/apache/commons/io/input/Tailer;->Wwwwwwwwwwwwwwwwwwww:Lorg/apache/commons/io/input/TailerListener;

    .line 35
    .line 36
    invoke-interface {v7}, Lorg/apache/commons/io/input/TailerListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 37
    .line 38
    .line 39
    :goto_1
    if-nez v2, :cond_0

    .line 40
    .line 41
    iget-wide v7, p0, Lorg/apache/commons/io/input/Tailer;->Wwwwwwwwwwwwwwwwwwwwww:J

    .line 42
    .line 43
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    iget-boolean v3, p0, Lorg/apache/commons/io/input/Tailer;->Wwwwwwwwwwwwwwwwwwwww:Z

    .line 48
    .line 49
    if-eqz v3, :cond_1

    .line 50
    .line 51
    iget-object v3, p0, Lorg/apache/commons/io/input/Tailer;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/io/File;

    .line 52
    .line 53
    invoke-virtual {v3}, Ljava/io/File;->length()J

    .line 54
    .line 55
    .line 56
    move-result-wide v3

    .line 57
    move-wide v5, v3

    .line 58
    goto :goto_2

    .line 59
    :cond_1
    move-wide v5, v0

    .line 60
    :goto_2
    iget-object v3, p0, Lorg/apache/commons/io/input/Tailer;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/io/File;

    .line 61
    .line 62
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    .line 63
    .line 64
    .line 65
    move-result-wide v3

    .line 66
    invoke-virtual {v2, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    :goto_3
    invoke-virtual {p0}, Lorg/apache/commons/io/input/Tailer;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 71
    .line 72
    .line 73
    move-result v7

    .line 74
    if-eqz v7, :cond_9

    .line 75
    .line 76
    iget-object v7, p0, Lorg/apache/commons/io/input/Tailer;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/io/File;

    .line 77
    .line 78
    invoke-static {v7, v3, v4}, Lorg/apache/commons/io/FileUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/File;J)Z

    .line 79
    .line 80
    .line 81
    move-result v7

    .line 82
    iget-object v9, p0, Lorg/apache/commons/io/input/Tailer;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/io/File;

    .line 83
    .line 84
    invoke-virtual {v9}, Ljava/io/File;->length()J

    .line 85
    .line 86
    .line 87
    move-result-wide v9

    .line 88
    cmp-long v9, v9, v5

    .line 89
    .line 90
    if-gez v9, :cond_5

    .line 91
    .line 92
    iget-object v7, p0, Lorg/apache/commons/io/input/Tailer;->Wwwwwwwwwwwwwwwwwwww:Lorg/apache/commons/io/input/TailerListener;

    .line 93
    .line 94
    invoke-interface {v7}, Lorg/apache/commons/io/input/TailerListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 95
    .line 96
    .line 97
    :try_start_3
    new-instance v7, Ljava/io/RandomAccessFile;

    .line 98
    .line 99
    iget-object v9, p0, Lorg/apache/commons/io/input/Tailer;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/io/File;

    .line 100
    .line 101
    invoke-direct {v7, v9, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 102
    .line 103
    .line 104
    :try_start_4
    invoke-virtual {p0, v2}, Lorg/apache/commons/io/input/Tailer;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/RandomAccessFile;)J
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 105
    .line 106
    .line 107
    goto :goto_4

    .line 108
    :catchall_1
    move-exception v9

    .line 109
    goto :goto_7

    .line 110
    :catch_3
    move-exception v9

    .line 111
    :try_start_5
    iget-object v10, p0, Lorg/apache/commons/io/input/Tailer;->Wwwwwwwwwwwwwwwwwwww:Lorg/apache/commons/io/input/TailerListener;

    .line 112
    .line 113
    invoke-interface {v10, v9}, Lorg/apache/commons/io/input/TailerListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 114
    .line 115
    .line 116
    :goto_4
    if-eqz v2, :cond_3

    .line 117
    .line 118
    :try_start_6
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 119
    .line 120
    .line 121
    goto :goto_5

    .line 122
    :catchall_2
    move-exception v0

    .line 123
    move-object v2, v7

    .line 124
    goto/16 :goto_11

    .line 125
    .line 126
    :catch_4
    move-exception v0

    .line 127
    move-object v2, v7

    .line 128
    goto/16 :goto_e

    .line 129
    .line 130
    :catch_5
    move-exception v0

    .line 131
    move-object v2, v7

    .line 132
    goto/16 :goto_f

    .line 133
    .line 134
    :catch_6
    move-wide v5, v0

    .line 135
    :catch_7
    move-object v2, v7

    .line 136
    goto :goto_9

    .line 137
    :cond_3
    :goto_5
    move-wide v5, v0

    .line 138
    :goto_6
    move-object v2, v7

    .line 139
    goto :goto_3

    .line 140
    :catchall_3
    move-exception v9

    .line 141
    move-object v7, v2

    .line 142
    :goto_7
    :try_start_7
    throw v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 143
    :catchall_4
    move-exception v10

    .line 144
    if-eqz v2, :cond_4

    .line 145
    .line 146
    :try_start_8
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 147
    .line 148
    .line 149
    goto :goto_8

    .line 150
    :catchall_5
    move-exception v2

    .line 151
    :try_start_9
    invoke-virtual {v9, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 152
    .line 153
    .line 154
    :cond_4
    :goto_8
    throw v10
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 155
    :goto_9
    :try_start_a
    iget-object v7, p0, Lorg/apache/commons/io/input/Tailer;->Wwwwwwwwwwwwwwwwwwww:Lorg/apache/commons/io/input/TailerListener;

    .line 156
    .line 157
    invoke-interface {v7}, Lorg/apache/commons/io/input/TailerListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 158
    .line 159
    .line 160
    iget-wide v9, p0, Lorg/apache/commons/io/input/Tailer;->Wwwwwwwwwwwwwwwwwwwwww:J

    .line 161
    .line 162
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V

    .line 163
    .line 164
    .line 165
    goto :goto_3

    .line 166
    :cond_5
    if-lez v9, :cond_6

    .line 167
    .line 168
    invoke-virtual {p0, v2}, Lorg/apache/commons/io/input/Tailer;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/RandomAccessFile;)J

    .line 169
    .line 170
    .line 171
    move-result-wide v3

    .line 172
    iget-object v5, p0, Lorg/apache/commons/io/input/Tailer;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/io/File;

    .line 173
    .line 174
    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    .line 175
    .line 176
    .line 177
    move-result-wide v5

    .line 178
    :goto_a
    move-wide v11, v5

    .line 179
    move-wide v5, v3

    .line 180
    move-wide v3, v11

    .line 181
    goto :goto_b

    .line 182
    :cond_6
    if-eqz v7, :cond_7

    .line 183
    .line 184
    invoke-virtual {v2, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0, v2}, Lorg/apache/commons/io/input/Tailer;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/RandomAccessFile;)J

    .line 188
    .line 189
    .line 190
    move-result-wide v3

    .line 191
    iget-object v5, p0, Lorg/apache/commons/io/input/Tailer;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/io/File;

    .line 192
    .line 193
    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    .line 194
    .line 195
    .line 196
    move-result-wide v5

    .line 197
    goto :goto_a

    .line 198
    :cond_7
    :goto_b
    iget-boolean v7, p0, Lorg/apache/commons/io/input/Tailer;->Wwwwwwwwwwwwwwwwwww:Z

    .line 199
    .line 200
    if-eqz v7, :cond_8

    .line 201
    .line 202
    if-eqz v2, :cond_8

    .line 203
    .line 204
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    .line 205
    .line 206
    .line 207
    :cond_8
    iget-wide v9, p0, Lorg/apache/commons/io/input/Tailer;->Wwwwwwwwwwwwwwwwwwwwww:J

    .line 208
    .line 209
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p0}, Lorg/apache/commons/io/input/Tailer;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 213
    .line 214
    .line 215
    move-result v7

    .line 216
    if-eqz v7, :cond_2

    .line 217
    .line 218
    iget-boolean v7, p0, Lorg/apache/commons/io/input/Tailer;->Wwwwwwwwwwwwwwwwwww:Z

    .line 219
    .line 220
    if-eqz v7, :cond_2

    .line 221
    .line 222
    new-instance v7, Ljava/io/RandomAccessFile;

    .line 223
    .line 224
    iget-object v9, p0, Lorg/apache/commons/io/input/Tailer;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/io/File;

    .line 225
    .line 226
    invoke-direct {v7, v9, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 227
    .line 228
    .line 229
    :try_start_b
    invoke-virtual {v7, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 230
    .line 231
    .line 232
    goto :goto_6

    .line 233
    :cond_9
    if-eqz v2, :cond_a

    .line 234
    .line 235
    :try_start_c
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 236
    .line 237
    .line 238
    goto :goto_d

    .line 239
    :catch_8
    move-exception v0

    .line 240
    :goto_c
    iget-object v1, p0, Lorg/apache/commons/io/input/Tailer;->Wwwwwwwwwwwwwwwwwwww:Lorg/apache/commons/io/input/TailerListener;

    .line 241
    .line 242
    invoke-interface {v1, v0}, Lorg/apache/commons/io/input/TailerListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Exception;)V

    .line 243
    .line 244
    .line 245
    :cond_a
    :goto_d
    invoke-virtual {p0}, Lorg/apache/commons/io/input/Tailer;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 246
    .line 247
    .line 248
    goto :goto_10

    .line 249
    :goto_e
    :try_start_d
    iget-object v1, p0, Lorg/apache/commons/io/input/Tailer;->Wwwwwwwwwwwwwwwwwwww:Lorg/apache/commons/io/input/TailerListener;

    .line 250
    .line 251
    invoke-interface {v1, v0}, Lorg/apache/commons/io/input/TailerListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Exception;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 252
    .line 253
    .line 254
    if-eqz v2, :cond_a

    .line 255
    .line 256
    :try_start_e
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9

    .line 257
    .line 258
    .line 259
    goto :goto_d

    .line 260
    :catch_9
    move-exception v0

    .line 261
    goto :goto_c

    .line 262
    :goto_f
    :try_start_f
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 267
    .line 268
    .line 269
    iget-object v1, p0, Lorg/apache/commons/io/input/Tailer;->Wwwwwwwwwwwwwwwwwwww:Lorg/apache/commons/io/input/TailerListener;

    .line 270
    .line 271
    invoke-interface {v1, v0}, Lorg/apache/commons/io/input/TailerListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Exception;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 272
    .line 273
    .line 274
    if-eqz v2, :cond_a

    .line 275
    .line 276
    :try_start_10
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_a

    .line 277
    .line 278
    .line 279
    goto :goto_d

    .line 280
    :catch_a
    move-exception v0

    .line 281
    goto :goto_c

    .line 282
    :goto_10
    return-void

    .line 283
    :goto_11
    if-eqz v2, :cond_b

    .line 284
    .line 285
    :try_start_11
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_b

    .line 286
    .line 287
    .line 288
    goto :goto_12

    .line 289
    :catch_b
    move-exception v1

    .line 290
    iget-object v2, p0, Lorg/apache/commons/io/input/Tailer;->Wwwwwwwwwwwwwwwwwwww:Lorg/apache/commons/io/input/TailerListener;

    .line 291
    .line 292
    invoke-interface {v2, v1}, Lorg/apache/commons/io/input/TailerListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Exception;)V

    .line 293
    .line 294
    .line 295
    :cond_b
    :goto_12
    invoke-virtual {p0}, Lorg/apache/commons/io/input/Tailer;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 296
    .line 297
    .line 298
    throw v0
.end method
