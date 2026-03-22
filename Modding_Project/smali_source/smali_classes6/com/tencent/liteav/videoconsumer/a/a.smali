.class public final Lcom/tencent/liteav/videoconsumer/a/a;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/videoconsumer/a/a$a;
    }
.end annotation


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/a/a;->a:Z

    .line 6
    .line 7
    return-void
.end method

.method private static a(Lcom/tencent/liteav/videoconsumer/decoder/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    invoke-virtual {p0}, Lcom/tencent/liteav/videoconsumer/decoder/b;->c()I

    move-result v0

    const/4 v1, 0x4

    .line 123
    invoke-virtual {p0, v1}, Lcom/tencent/liteav/videoconsumer/decoder/b;->a(I)V

    .line 124
    invoke-virtual {p0, v1}, Lcom/tencent/liteav/videoconsumer/decoder/b;->a(I)V

    const/4 v1, 0x0

    :goto_0
    if-gt v1, v0, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/tencent/liteav/videoconsumer/decoder/b;->d()V

    .line 126
    invoke-virtual {p0}, Lcom/tencent/liteav/videoconsumer/decoder/b;->d()V

    const/4 v2, 0x1

    .line 127
    invoke-virtual {p0, v2}, Lcom/tencent/liteav/videoconsumer/decoder/b;->a(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    .line 128
    invoke-virtual {p0, v0}, Lcom/tencent/liteav/videoconsumer/decoder/b;->a(I)V

    .line 129
    invoke-virtual {p0, v0}, Lcom/tencent/liteav/videoconsumer/decoder/b;->a(I)V

    .line 130
    invoke-virtual {p0, v0}, Lcom/tencent/liteav/videoconsumer/decoder/b;->a(I)V

    .line 131
    invoke-virtual {p0, v0}, Lcom/tencent/liteav/videoconsumer/decoder/b;->a(I)V

    return-void
.end method

.method public static a([B)[B
    .locals 9

    .line 1
    array-length v0, p0

    const/4 v1, 0x3

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 2
    :goto_0
    array-length v5, p0

    if-ge v3, v5, :cond_1

    .line 3
    array-length v5, p0

    add-int/lit8 v5, v5, -0x2

    if-ge v3, v5, :cond_0

    aget-byte v5, p0, v3

    if-nez v5, :cond_0

    add-int/lit8 v6, v3, 0x1

    aget-byte v7, p0, v6

    if-nez v7, :cond_0

    add-int/lit8 v7, v3, 0x2

    aget-byte v8, p0, v7

    if-gt v8, v1, :cond_0

    add-int/lit8 v3, v4, 0x1

    .line 4
    aput-byte v5, v0, v4

    add-int/lit8 v5, v4, 0x2

    .line 5
    aget-byte v6, p0, v6

    aput-byte v6, v0, v3

    add-int/lit8 v4, v4, 0x3

    .line 6
    aput-byte v1, v0, v5

    move v3, v7

    goto :goto_0

    :cond_0
    add-int/lit8 v5, v4, 0x1

    .line 7
    aget-byte v6, p0, v3

    aput-byte v6, v0, v4

    add-int/lit8 v3, v3, 0x1

    move v4, v5

    goto :goto_0

    .line 8
    :cond_1
    array-length v1, p0

    if-eq v4, v1, :cond_2

    .line 9
    new-array p0, v4, [B

    .line 10
    invoke-static {v0, v2, p0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    return-object p0
.end method


# virtual methods
.method public final a(Ljava/io/InputStream;Lcom/tencent/liteav/videoconsumer/a/a$a;)[B
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 12
    new-instance v1, Lcom/tencent/liteav/videoconsumer/decoder/b;

    invoke-direct {v1, p1, v0}, Lcom/tencent/liteav/videoconsumer/decoder/b;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    const/16 p1, 0x8

    .line 13
    invoke-virtual {v1, p1}, Lcom/tencent/liteav/videoconsumer/decoder/b;->b(I)V

    .line 14
    invoke-virtual {v1}, Lcom/tencent/liteav/videoconsumer/decoder/b;->a()J

    move-result-wide v2

    long-to-int v2, v2

    .line 15
    invoke-virtual {v1, p1}, Lcom/tencent/liteav/videoconsumer/decoder/b;->b(I)V

    .line 16
    invoke-virtual {v1}, Lcom/tencent/liteav/videoconsumer/decoder/b;->a()J

    .line 17
    invoke-virtual {v1}, Lcom/tencent/liteav/videoconsumer/decoder/b;->d()V

    const/16 v3, 0x64

    const/4 v4, 0x3

    const/16 v5, 0x10

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v2, v3, :cond_0

    const/16 v3, 0x6e

    if-eq v2, v3, :cond_0

    const/16 v3, 0x7a

    if-eq v2, v3, :cond_0

    const/16 v3, 0x90

    if-ne v2, v3, :cond_4

    .line 18
    :cond_0
    invoke-virtual {v1}, Lcom/tencent/liteav/videoconsumer/decoder/b;->c()I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 19
    invoke-virtual {v1, v7}, Lcom/tencent/liteav/videoconsumer/decoder/b;->b(I)V

    .line 20
    :cond_1
    invoke-virtual {v1}, Lcom/tencent/liteav/videoconsumer/decoder/b;->d()V

    .line 21
    invoke-virtual {v1}, Lcom/tencent/liteav/videoconsumer/decoder/b;->d()V

    .line 22
    invoke-virtual {v1, v7}, Lcom/tencent/liteav/videoconsumer/decoder/b;->b(I)V

    .line 23
    invoke-virtual {v1, v7}, Lcom/tencent/liteav/videoconsumer/decoder/b;->a(Z)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v6

    :goto_0
    if-ge v2, p1, :cond_4

    .line 24
    invoke-virtual {v1, v7}, Lcom/tencent/liteav/videoconsumer/decoder/b;->a(Z)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x6

    if-ge v2, v3, :cond_2

    .line 25
    invoke-virtual {v1, v5}, Lcom/tencent/liteav/videoconsumer/decoder/b;->c(I)V

    goto :goto_1

    :cond_2
    const/16 v3, 0x40

    .line 26
    invoke-virtual {v1, v3}, Lcom/tencent/liteav/videoconsumer/decoder/b;->c(I)V

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 27
    :cond_4
    invoke-virtual {v1}, Lcom/tencent/liteav/videoconsumer/decoder/b;->d()V

    .line 28
    invoke-virtual {v1}, Lcom/tencent/liteav/videoconsumer/decoder/b;->c()I

    move-result v2

    if-nez v2, :cond_5

    .line 29
    invoke-virtual {v1}, Lcom/tencent/liteav/videoconsumer/decoder/b;->d()V

    goto :goto_3

    :cond_5
    if-ne v2, v7, :cond_6

    .line 30
    invoke-virtual {v1, v7}, Lcom/tencent/liteav/videoconsumer/decoder/b;->b(I)V

    .line 31
    invoke-virtual {v1}, Lcom/tencent/liteav/videoconsumer/decoder/b;->d()V

    .line 32
    invoke-virtual {v1}, Lcom/tencent/liteav/videoconsumer/decoder/b;->d()V

    .line 33
    invoke-virtual {v1}, Lcom/tencent/liteav/videoconsumer/decoder/b;->c()I

    move-result v2

    move v3, v6

    :goto_2
    if-ge v3, v2, :cond_6

    .line 34
    invoke-virtual {v1}, Lcom/tencent/liteav/videoconsumer/decoder/b;->d()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 35
    :cond_6
    :goto_3
    invoke-virtual {v1}, Lcom/tencent/liteav/videoconsumer/decoder/b;->c()I

    .line 36
    invoke-virtual {v1, v7}, Lcom/tencent/liteav/videoconsumer/decoder/b;->b(I)V

    .line 37
    invoke-virtual {v1}, Lcom/tencent/liteav/videoconsumer/decoder/b;->d()V

    .line 38
    invoke-virtual {v1}, Lcom/tencent/liteav/videoconsumer/decoder/b;->d()V

    .line 39
    invoke-virtual {v1, v7}, Lcom/tencent/liteav/videoconsumer/decoder/b;->a(Z)Z

    move-result v2

    if-nez v2, :cond_7

    .line 40
    invoke-virtual {v1, v7}, Lcom/tencent/liteav/videoconsumer/decoder/b;->b(I)V

    .line 41
    :cond_7
    invoke-virtual {v1, v7}, Lcom/tencent/liteav/videoconsumer/decoder/b;->b(I)V

    .line 42
    invoke-virtual {v1, v7}, Lcom/tencent/liteav/videoconsumer/decoder/b;->a(Z)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_8

    .line 43
    invoke-virtual {v1}, Lcom/tencent/liteav/videoconsumer/decoder/b;->c()I

    move-result v2

    .line 44
    invoke-virtual {v1}, Lcom/tencent/liteav/videoconsumer/decoder/b;->c()I

    move-result v8

    .line 45
    invoke-virtual {v1}, Lcom/tencent/liteav/videoconsumer/decoder/b;->c()I

    move-result v9

    .line 46
    invoke-virtual {v1}, Lcom/tencent/liteav/videoconsumer/decoder/b;->c()I

    move-result v10

    .line 47
    invoke-interface {p2, v2, v8, v9, v10}, Lcom/tencent/liteav/videoconsumer/a/a$a;->a(IIII)Z

    move-result p2

    if-nez p2, :cond_8

    return-object v3

    .line 48
    :cond_8
    invoke-virtual {v1, v6}, Lcom/tencent/liteav/videoconsumer/decoder/b;->a(Z)Z

    move-result p2

    .line 49
    const-string v2, "H264SPSModifier"

    const/16 v8, 0xa

    if-eqz p2, :cond_14

    .line 50
    invoke-virtual {v1, v7}, Lcom/tencent/liteav/videoconsumer/decoder/b;->b(Z)V

    .line 51
    invoke-virtual {v1, v7}, Lcom/tencent/liteav/videoconsumer/decoder/b;->a(Z)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 52
    invoke-virtual {v1}, Lcom/tencent/liteav/videoconsumer/decoder/b;->a()J

    move-result-wide v9

    long-to-int p2, v9

    const/16 v9, 0xff

    if-ne p2, v9, :cond_9

    .line 53
    invoke-virtual {v1, v5}, Lcom/tencent/liteav/videoconsumer/decoder/b;->b(I)V

    .line 54
    invoke-virtual {v1, v5}, Lcom/tencent/liteav/videoconsumer/decoder/b;->b(I)V

    .line 55
    :cond_9
    invoke-virtual {v1, v7}, Lcom/tencent/liteav/videoconsumer/decoder/b;->a(Z)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 56
    invoke-virtual {v1, v7}, Lcom/tencent/liteav/videoconsumer/decoder/b;->b(I)V

    .line 57
    :cond_a
    invoke-virtual {v1, v7}, Lcom/tencent/liteav/videoconsumer/decoder/b;->a(Z)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 58
    invoke-virtual {v1, v4}, Lcom/tencent/liteav/videoconsumer/decoder/b;->b(I)V

    .line 59
    invoke-virtual {v1, v7}, Lcom/tencent/liteav/videoconsumer/decoder/b;->b(I)V

    .line 60
    invoke-virtual {v1, v7}, Lcom/tencent/liteav/videoconsumer/decoder/b;->a(Z)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 61
    invoke-virtual {v1, p1}, Lcom/tencent/liteav/videoconsumer/decoder/b;->b(I)V

    .line 62
    invoke-virtual {v1, p1}, Lcom/tencent/liteav/videoconsumer/decoder/b;->b(I)V

    .line 63
    invoke-virtual {v1, p1}, Lcom/tencent/liteav/videoconsumer/decoder/b;->b(I)V

    .line 64
    :cond_b
    invoke-virtual {v1, v7}, Lcom/tencent/liteav/videoconsumer/decoder/b;->a(Z)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 65
    invoke-virtual {v1}, Lcom/tencent/liteav/videoconsumer/decoder/b;->d()V

    .line 66
    invoke-virtual {v1}, Lcom/tencent/liteav/videoconsumer/decoder/b;->d()V

    .line 67
    :cond_c
    invoke-virtual {v1, v7}, Lcom/tencent/liteav/videoconsumer/decoder/b;->a(Z)Z

    move-result p1

    if-eqz p1, :cond_d

    const/16 p1, 0x20

    .line 68
    invoke-virtual {v1, p1}, Lcom/tencent/liteav/videoconsumer/decoder/b;->b(I)V

    .line 69
    invoke-virtual {v1, p1}, Lcom/tencent/liteav/videoconsumer/decoder/b;->b(I)V

    .line 70
    invoke-virtual {v1, v7}, Lcom/tencent/liteav/videoconsumer/decoder/b;->b(I)V

    .line 71
    :cond_d
    invoke-virtual {v1, v7}, Lcom/tencent/liteav/videoconsumer/decoder/b;->a(Z)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 72
    invoke-static {v1}, Lcom/tencent/liteav/videoconsumer/a/a;->a(Lcom/tencent/liteav/videoconsumer/decoder/b;)V

    .line 73
    :cond_e
    invoke-virtual {v1, v7}, Lcom/tencent/liteav/videoconsumer/decoder/b;->a(Z)Z

    move-result p2

    if-eqz p2, :cond_f

    .line 74
    invoke-static {v1}, Lcom/tencent/liteav/videoconsumer/a/a;->a(Lcom/tencent/liteav/videoconsumer/decoder/b;)V

    :cond_f
    if-nez p1, :cond_10

    if-eqz p2, :cond_11

    .line 75
    :cond_10
    invoke-virtual {v1, v7}, Lcom/tencent/liteav/videoconsumer/decoder/b;->b(I)V

    .line 76
    :cond_11
    invoke-virtual {v1, v7}, Lcom/tencent/liteav/videoconsumer/decoder/b;->b(I)V

    .line 77
    invoke-virtual {v1, v6}, Lcom/tencent/liteav/videoconsumer/decoder/b;->a(Z)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 78
    invoke-virtual {v1, v7}, Lcom/tencent/liteav/videoconsumer/decoder/b;->b(Z)V

    .line 79
    invoke-virtual {v1, v7}, Lcom/tencent/liteav/videoconsumer/decoder/b;->a(Z)Z

    .line 80
    invoke-virtual {v1}, Lcom/tencent/liteav/videoconsumer/decoder/b;->d()V

    .line 81
    invoke-virtual {v1}, Lcom/tencent/liteav/videoconsumer/decoder/b;->d()V

    .line 82
    invoke-virtual {v1}, Lcom/tencent/liteav/videoconsumer/decoder/b;->d()V

    .line 83
    invoke-virtual {v1}, Lcom/tencent/liteav/videoconsumer/decoder/b;->d()V

    .line 84
    invoke-virtual {v1}, Lcom/tencent/liteav/videoconsumer/decoder/b;->d()V

    .line 85
    iget-boolean p1, p0, Lcom/tencent/liteav/videoconsumer/a/a;->a:Z

    if-nez p1, :cond_12

    .line 86
    invoke-virtual {v1}, Lcom/tencent/liteav/videoconsumer/decoder/b;->b()I

    move-result p1

    .line 87
    const-string p2, "decode: do not add max_dec_frame_buffering when it is "

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iput-boolean v7, p0, Lcom/tencent/liteav/videoconsumer/a/a;->a:Z

    :cond_12
    return-object v3

    .line 89
    :cond_13
    invoke-virtual {v1, v7}, Lcom/tencent/liteav/videoconsumer/decoder/b;->b(Z)V

    .line 90
    invoke-virtual {v1, v7}, Lcom/tencent/liteav/videoconsumer/decoder/b;->b(Z)V

    .line 91
    invoke-virtual {v1, v6}, Lcom/tencent/liteav/videoconsumer/decoder/b;->d(I)V

    .line 92
    invoke-virtual {v1, v6}, Lcom/tencent/liteav/videoconsumer/decoder/b;->d(I)V

    .line 93
    invoke-virtual {v1, v8}, Lcom/tencent/liteav/videoconsumer/decoder/b;->d(I)V

    .line 94
    invoke-virtual {v1, v8}, Lcom/tencent/liteav/videoconsumer/decoder/b;->d(I)V

    .line 95
    invoke-virtual {v1, v6}, Lcom/tencent/liteav/videoconsumer/decoder/b;->d(I)V

    .line 96
    invoke-virtual {v1, v7}, Lcom/tencent/liteav/videoconsumer/decoder/b;->d(I)V

    .line 97
    iget-boolean p1, p0, Lcom/tencent/liteav/videoconsumer/a/a;->a:Z

    if-nez p1, :cond_15

    .line 98
    const-string p1, "decode: add max_dec_frame_buffering 1 when it is no exist"

    invoke-static {v2, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iput-boolean v7, p0, Lcom/tencent/liteav/videoconsumer/a/a;->a:Z

    goto :goto_4

    .line 100
    :cond_14
    invoke-virtual {v1, v7}, Lcom/tencent/liteav/videoconsumer/decoder/b;->b(Z)V

    .line 101
    invoke-virtual {v1, v6}, Lcom/tencent/liteav/videoconsumer/decoder/b;->b(Z)V

    .line 102
    invoke-virtual {v1, v6}, Lcom/tencent/liteav/videoconsumer/decoder/b;->b(Z)V

    .line 103
    invoke-virtual {v1, v6}, Lcom/tencent/liteav/videoconsumer/decoder/b;->b(Z)V

    .line 104
    invoke-virtual {v1, v6}, Lcom/tencent/liteav/videoconsumer/decoder/b;->b(Z)V

    .line 105
    invoke-virtual {v1, v6}, Lcom/tencent/liteav/videoconsumer/decoder/b;->b(Z)V

    .line 106
    invoke-virtual {v1, v6}, Lcom/tencent/liteav/videoconsumer/decoder/b;->b(Z)V

    .line 107
    invoke-virtual {v1, v6}, Lcom/tencent/liteav/videoconsumer/decoder/b;->b(Z)V

    .line 108
    invoke-virtual {v1, v6}, Lcom/tencent/liteav/videoconsumer/decoder/b;->b(Z)V

    .line 109
    invoke-virtual {v1, v7}, Lcom/tencent/liteav/videoconsumer/decoder/b;->b(Z)V

    .line 110
    invoke-virtual {v1, v7}, Lcom/tencent/liteav/videoconsumer/decoder/b;->b(Z)V

    .line 111
    invoke-virtual {v1, v6}, Lcom/tencent/liteav/videoconsumer/decoder/b;->d(I)V

    .line 112
    invoke-virtual {v1, v6}, Lcom/tencent/liteav/videoconsumer/decoder/b;->d(I)V

    .line 113
    invoke-virtual {v1, v8}, Lcom/tencent/liteav/videoconsumer/decoder/b;->d(I)V

    .line 114
    invoke-virtual {v1, v8}, Lcom/tencent/liteav/videoconsumer/decoder/b;->d(I)V

    .line 115
    invoke-virtual {v1, v6}, Lcom/tencent/liteav/videoconsumer/decoder/b;->d(I)V

    .line 116
    invoke-virtual {v1, v7}, Lcom/tencent/liteav/videoconsumer/decoder/b;->d(I)V

    .line 117
    iget-boolean p1, p0, Lcom/tencent/liteav/videoconsumer/a/a;->a:Z

    if-nez p1, :cond_15

    .line 118
    const-string p1, "decode: add max_dec_frame_buffering 1 when vui is no exist"

    invoke-static {v2, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iput-boolean v7, p0, Lcom/tencent/liteav/videoconsumer/a/a;->a:Z

    .line 120
    :cond_15
    :goto_4
    invoke-virtual {v1}, Lcom/tencent/liteav/videoconsumer/decoder/b;->e()V

    .line 121
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method
