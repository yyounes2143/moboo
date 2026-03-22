.class public final Lokio/-Base64;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0010\u000e\n\u0002\u0010\u0012\n\u0002\u0008\u000f\u001a\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\u0000\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u001a\u001d\u0010\u0005\u001a\u00020\u0000*\u00020\u00012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0001H\u0000\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\" \u0010\u000c\u001a\u00020\u00018\u0000X\u0081\u0004\u00a2\u0006\u0012\n\u0004\u0008\u0002\u0010\u0007\u0012\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u0008\u0010\t\" \u0010\u000f\u001a\u00020\u00018\u0000X\u0081\u0004\u00a2\u0006\u0012\n\u0004\u0008\u0005\u0010\u0007\u0012\u0004\u0008\u000e\u0010\u000b\u001a\u0004\u0008\r\u0010\t\u00a8\u0006\u0010"
    }
    d2 = {
        "",
        "",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Ljava/lang/String;)[B",
        "map",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "([B[B)Ljava/lang/String;",
        "[B",
        "getBASE64",
        "()[B",
        "getBASE64$annotations",
        "()V",
        "BASE64",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "getBASE64_URL_SAFE$annotations",
        "BASE64_URL_SAFE",
        "okio"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/JvmName;
    name = "-Base64"
.end annotation


# static fields
.field public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[B
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[B
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    .line 2
    .line 3
    const-string v1, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lokio/ByteString$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lokio/ByteString;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lokio/ByteString;->getData$okio()[B

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    sput-object v1, Lokio/-Base64;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[B

    .line 14
    .line 15
    const-string v1, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lokio/ByteString$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lokio/ByteString;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lokio/ByteString;->getData$okio()[B

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lokio/-Base64;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[B

    .line 26
    .line 27
    return-void
.end method

.method public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()[B
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lokio/-Base64;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww([B[BILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    sget-object p1, Lokio/-Base64;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[B

    .line 6
    .line 7
    :cond_0
    invoke-static {p0, p1}, Lokio/-Base64;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww([B[B)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww([B[B)Ljava/lang/String;
    .locals 11
    .param p0    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x2

    .line 3
    add-int/2addr v0, v1

    .line 4
    div-int/lit8 v0, v0, 0x3

    .line 5
    .line 6
    mul-int/lit8 v0, v0, 0x4

    .line 7
    .line 8
    new-array v0, v0, [B

    .line 9
    .line 10
    array-length v2, p0

    .line 11
    array-length v3, p0

    .line 12
    rem-int/lit8 v3, v3, 0x3

    .line 13
    .line 14
    sub-int/2addr v2, v3

    .line 15
    const/4 v3, 0x0

    .line 16
    move v4, v3

    .line 17
    :goto_0
    if-ge v3, v2, :cond_0

    .line 18
    .line 19
    add-int/lit8 v5, v3, 0x1

    .line 20
    .line 21
    aget-byte v6, p0, v3

    .line 22
    .line 23
    add-int/lit8 v7, v3, 0x2

    .line 24
    .line 25
    aget-byte v5, p0, v5

    .line 26
    .line 27
    add-int/lit8 v3, v3, 0x3

    .line 28
    .line 29
    aget-byte v7, p0, v7

    .line 30
    .line 31
    add-int/lit8 v8, v4, 0x1

    .line 32
    .line 33
    and-int/lit16 v9, v6, 0xff

    .line 34
    .line 35
    shr-int/2addr v9, v1

    .line 36
    aget-byte v9, p1, v9

    .line 37
    .line 38
    aput-byte v9, v0, v4

    .line 39
    .line 40
    add-int/lit8 v9, v4, 0x2

    .line 41
    .line 42
    and-int/lit8 v6, v6, 0x3

    .line 43
    .line 44
    shl-int/lit8 v6, v6, 0x4

    .line 45
    .line 46
    and-int/lit16 v10, v5, 0xff

    .line 47
    .line 48
    shr-int/lit8 v10, v10, 0x4

    .line 49
    .line 50
    or-int/2addr v6, v10

    .line 51
    aget-byte v6, p1, v6

    .line 52
    .line 53
    aput-byte v6, v0, v8

    .line 54
    .line 55
    add-int/lit8 v6, v4, 0x3

    .line 56
    .line 57
    and-int/lit8 v5, v5, 0xf

    .line 58
    .line 59
    shl-int/2addr v5, v1

    .line 60
    and-int/lit16 v8, v7, 0xff

    .line 61
    .line 62
    shr-int/lit8 v8, v8, 0x6

    .line 63
    .line 64
    or-int/2addr v5, v8

    .line 65
    aget-byte v5, p1, v5

    .line 66
    .line 67
    aput-byte v5, v0, v9

    .line 68
    .line 69
    add-int/lit8 v4, v4, 0x4

    .line 70
    .line 71
    and-int/lit8 v5, v7, 0x3f

    .line 72
    .line 73
    aget-byte v5, p1, v5

    .line 74
    .line 75
    aput-byte v5, v0, v6

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_0
    array-length v5, p0

    .line 79
    sub-int/2addr v5, v2

    .line 80
    const/16 v2, 0x3d

    .line 81
    .line 82
    const/4 v6, 0x1

    .line 83
    if-eq v5, v6, :cond_2

    .line 84
    .line 85
    if-eq v5, v1, :cond_1

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_1
    add-int/lit8 v5, v3, 0x1

    .line 89
    .line 90
    aget-byte v3, p0, v3

    .line 91
    .line 92
    aget-byte p0, p0, v5

    .line 93
    .line 94
    add-int/lit8 v5, v4, 0x1

    .line 95
    .line 96
    and-int/lit16 v6, v3, 0xff

    .line 97
    .line 98
    shr-int/2addr v6, v1

    .line 99
    aget-byte v6, p1, v6

    .line 100
    .line 101
    aput-byte v6, v0, v4

    .line 102
    .line 103
    add-int/lit8 v6, v4, 0x2

    .line 104
    .line 105
    and-int/lit8 v3, v3, 0x3

    .line 106
    .line 107
    shl-int/lit8 v3, v3, 0x4

    .line 108
    .line 109
    and-int/lit16 v7, p0, 0xff

    .line 110
    .line 111
    shr-int/lit8 v7, v7, 0x4

    .line 112
    .line 113
    or-int/2addr v3, v7

    .line 114
    aget-byte v3, p1, v3

    .line 115
    .line 116
    aput-byte v3, v0, v5

    .line 117
    .line 118
    add-int/lit8 v4, v4, 0x3

    .line 119
    .line 120
    and-int/lit8 p0, p0, 0xf

    .line 121
    .line 122
    shl-int/2addr p0, v1

    .line 123
    aget-byte p0, p1, p0

    .line 124
    .line 125
    aput-byte p0, v0, v6

    .line 126
    .line 127
    aput-byte v2, v0, v4

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_2
    aget-byte p0, p0, v3

    .line 131
    .line 132
    add-int/lit8 v3, v4, 0x1

    .line 133
    .line 134
    and-int/lit16 v5, p0, 0xff

    .line 135
    .line 136
    shr-int/lit8 v1, v5, 0x2

    .line 137
    .line 138
    aget-byte v1, p1, v1

    .line 139
    .line 140
    aput-byte v1, v0, v4

    .line 141
    .line 142
    add-int/lit8 v1, v4, 0x2

    .line 143
    .line 144
    and-int/lit8 p0, p0, 0x3

    .line 145
    .line 146
    shl-int/lit8 p0, p0, 0x4

    .line 147
    .line 148
    aget-byte p0, p1, p0

    .line 149
    .line 150
    aput-byte p0, v0, v3

    .line 151
    .line 152
    add-int/lit8 v4, v4, 0x3

    .line 153
    .line 154
    aput-byte v2, v0, v1

    .line 155
    .line 156
    aput-byte v2, v0, v4

    .line 157
    .line 158
    :goto_1
    invoke-static {v0}, Lokio/_JvmPlatformKt;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww([B)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    return-object p0
.end method

.method public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)[B
    .locals 14
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    :goto_0
    const/16 v1, 0x9

    .line 6
    .line 7
    const/16 v2, 0x20

    .line 8
    .line 9
    const/16 v3, 0xd

    .line 10
    .line 11
    const/16 v4, 0xa

    .line 12
    .line 13
    if-lez v0, :cond_1

    .line 14
    .line 15
    add-int/lit8 v5, v0, -0x1

    .line 16
    .line 17
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    const/16 v6, 0x3d

    .line 22
    .line 23
    if-eq v5, v6, :cond_0

    .line 24
    .line 25
    if-eq v5, v4, :cond_0

    .line 26
    .line 27
    if-eq v5, v3, :cond_0

    .line 28
    .line 29
    if-eq v5, v2, :cond_0

    .line 30
    .line 31
    if-eq v5, v1, :cond_0

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    :goto_1
    int-to-long v5, v0

    .line 38
    const-wide/16 v7, 0x6

    .line 39
    .line 40
    mul-long/2addr v5, v7

    .line 41
    const-wide/16 v7, 0x8

    .line 42
    .line 43
    div-long/2addr v5, v7

    .line 44
    long-to-int v5, v5

    .line 45
    new-array v6, v5, [B

    .line 46
    .line 47
    const/4 v7, 0x0

    .line 48
    move v8, v7

    .line 49
    move v9, v8

    .line 50
    move v10, v9

    .line 51
    :goto_2
    const/4 v11, 0x0

    .line 52
    if-ge v7, v0, :cond_b

    .line 53
    .line 54
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    .line 55
    .line 56
    .line 57
    move-result v12

    .line 58
    const/16 v13, 0x41

    .line 59
    .line 60
    if-gt v13, v12, :cond_2

    .line 61
    .line 62
    const/16 v13, 0x5b

    .line 63
    .line 64
    if-ge v12, v13, :cond_2

    .line 65
    .line 66
    add-int/lit8 v12, v12, -0x41

    .line 67
    .line 68
    goto :goto_5

    .line 69
    :cond_2
    const/16 v13, 0x61

    .line 70
    .line 71
    if-gt v13, v12, :cond_3

    .line 72
    .line 73
    const/16 v13, 0x7b

    .line 74
    .line 75
    if-ge v12, v13, :cond_3

    .line 76
    .line 77
    add-int/lit8 v12, v12, -0x47

    .line 78
    .line 79
    goto :goto_5

    .line 80
    :cond_3
    const/16 v13, 0x30

    .line 81
    .line 82
    if-gt v13, v12, :cond_4

    .line 83
    .line 84
    const/16 v13, 0x3a

    .line 85
    .line 86
    if-ge v12, v13, :cond_4

    .line 87
    .line 88
    add-int/lit8 v12, v12, 0x4

    .line 89
    .line 90
    goto :goto_5

    .line 91
    :cond_4
    const/16 v13, 0x2b

    .line 92
    .line 93
    if-eq v12, v13, :cond_9

    .line 94
    .line 95
    const/16 v13, 0x2d

    .line 96
    .line 97
    if-ne v12, v13, :cond_5

    .line 98
    .line 99
    goto :goto_4

    .line 100
    :cond_5
    const/16 v13, 0x2f

    .line 101
    .line 102
    if-eq v12, v13, :cond_8

    .line 103
    .line 104
    const/16 v13, 0x5f

    .line 105
    .line 106
    if-ne v12, v13, :cond_6

    .line 107
    .line 108
    goto :goto_3

    .line 109
    :cond_6
    if-eq v12, v4, :cond_a

    .line 110
    .line 111
    if-eq v12, v3, :cond_a

    .line 112
    .line 113
    if-eq v12, v2, :cond_a

    .line 114
    .line 115
    if-ne v12, v1, :cond_7

    .line 116
    .line 117
    goto :goto_6

    .line 118
    :cond_7
    return-object v11

    .line 119
    :cond_8
    :goto_3
    const/16 v12, 0x3f

    .line 120
    .line 121
    goto :goto_5

    .line 122
    :cond_9
    :goto_4
    const/16 v12, 0x3e

    .line 123
    .line 124
    :goto_5
    shl-int/lit8 v9, v9, 0x6

    .line 125
    .line 126
    or-int/2addr v9, v12

    .line 127
    add-int/lit8 v8, v8, 0x1

    .line 128
    .line 129
    rem-int/lit8 v11, v8, 0x4

    .line 130
    .line 131
    if-nez v11, :cond_a

    .line 132
    .line 133
    add-int/lit8 v11, v10, 0x1

    .line 134
    .line 135
    shr-int/lit8 v12, v9, 0x10

    .line 136
    .line 137
    int-to-byte v12, v12

    .line 138
    aput-byte v12, v6, v10

    .line 139
    .line 140
    add-int/lit8 v12, v10, 0x2

    .line 141
    .line 142
    shr-int/lit8 v13, v9, 0x8

    .line 143
    .line 144
    int-to-byte v13, v13

    .line 145
    aput-byte v13, v6, v11

    .line 146
    .line 147
    add-int/lit8 v10, v10, 0x3

    .line 148
    .line 149
    int-to-byte v11, v9

    .line 150
    aput-byte v11, v6, v12

    .line 151
    .line 152
    :cond_a
    :goto_6
    add-int/lit8 v7, v7, 0x1

    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_b
    rem-int/lit8 v8, v8, 0x4

    .line 156
    .line 157
    const/4 p0, 0x1

    .line 158
    if-eq v8, p0, :cond_f

    .line 159
    .line 160
    const/4 p0, 0x2

    .line 161
    if-eq v8, p0, :cond_d

    .line 162
    .line 163
    const/4 p0, 0x3

    .line 164
    if-eq v8, p0, :cond_c

    .line 165
    .line 166
    goto :goto_7

    .line 167
    :cond_c
    shl-int/lit8 p0, v9, 0x6

    .line 168
    .line 169
    add-int/lit8 v0, v10, 0x1

    .line 170
    .line 171
    shr-int/lit8 v1, p0, 0x10

    .line 172
    .line 173
    int-to-byte v1, v1

    .line 174
    aput-byte v1, v6, v10

    .line 175
    .line 176
    add-int/lit8 v10, v10, 0x2

    .line 177
    .line 178
    shr-int/lit8 p0, p0, 0x8

    .line 179
    .line 180
    int-to-byte p0, p0

    .line 181
    aput-byte p0, v6, v0

    .line 182
    .line 183
    goto :goto_7

    .line 184
    :cond_d
    shl-int/lit8 p0, v9, 0xc

    .line 185
    .line 186
    add-int/lit8 v0, v10, 0x1

    .line 187
    .line 188
    shr-int/lit8 p0, p0, 0x10

    .line 189
    .line 190
    int-to-byte p0, p0

    .line 191
    aput-byte p0, v6, v10

    .line 192
    .line 193
    move v10, v0

    .line 194
    :goto_7
    if-ne v10, v5, :cond_e

    .line 195
    .line 196
    return-object v6

    .line 197
    :cond_e
    invoke-static {v6, v10}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 198
    .line 199
    .line 200
    move-result-object p0

    .line 201
    return-object p0

    .line 202
    :cond_f
    return-object v11
.end method
