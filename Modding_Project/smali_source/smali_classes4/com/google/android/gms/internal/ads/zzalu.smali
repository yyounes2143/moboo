.class final Lcom/google/android/gms/internal/ads/zzalu;
.super Ljava/lang/Object;
.source "Proguard"


# static fields
.field private static final zza:Ljava/util/regex/Pattern;

.field private static final zzb:Ljava/util/regex/Pattern;


# instance fields
.field private final zzc:Lcom/google/android/gms/internal/ads/zzek;

.field private final zzd:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "\\[voice=\"([^\"]*)\"\\]"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/google/android/gms/internal/ads/zzalu;->zza:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    const-string v0, "^((?:[0-9]*\\.)?[0-9]+)(px|em|%)$"

    .line 10
    .line 11
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/google/android/gms/internal/ads/zzalu;->zzb:Ljava/util/regex/Pattern;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzek;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzek;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzalu;->zzc:Lcom/google/android/gms/internal/ads/zzek;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzalu;->zzd:Ljava/lang/StringBuilder;

    .line 17
    .line 18
    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzek;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzalu;->zzc(Lcom/google/android/gms/internal/ads/zzek;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zza()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    return-object p0

    .line 12
    :cond_0
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzalu;->zzd(Lcom/google/android/gms/internal/ads/zzek;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string v0, ""

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    return-object p1

    .line 25
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zzm()I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    int-to-char p0, p0

    .line 30
    new-instance p1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzek;)V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    :goto_0
    move v1, v0

    .line 3
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zza()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-lez v2, :cond_4

    .line 8
    .line 9
    if-eqz v1, :cond_4

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zzc()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    aget-byte v1, v2, v1

    .line 20
    .line 21
    int-to-char v1, v1

    .line 22
    const/16 v2, 0x9

    .line 23
    .line 24
    if-eq v1, v2, :cond_3

    .line 25
    .line 26
    const/16 v2, 0xa

    .line 27
    .line 28
    if-eq v1, v2, :cond_3

    .line 29
    .line 30
    const/16 v2, 0xc

    .line 31
    .line 32
    if-eq v1, v2, :cond_3

    .line 33
    .line 34
    const/16 v2, 0xd

    .line 35
    .line 36
    if-eq v1, v2, :cond_3

    .line 37
    .line 38
    const/16 v2, 0x20

    .line 39
    .line 40
    if-eq v1, v2, :cond_3

    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zzc()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zzd()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    add-int/lit8 v4, v1, 0x2

    .line 55
    .line 56
    const/4 v5, 0x0

    .line 57
    if-gt v4, v2, :cond_2

    .line 58
    .line 59
    add-int/lit8 v4, v1, 0x1

    .line 60
    .line 61
    aget-byte v6, v3, v1

    .line 62
    .line 63
    const/16 v7, 0x2f

    .line 64
    .line 65
    if-ne v6, v7, :cond_2

    .line 66
    .line 67
    add-int/lit8 v1, v1, 0x2

    .line 68
    .line 69
    aget-byte v4, v3, v4

    .line 70
    .line 71
    const/16 v6, 0x2a

    .line 72
    .line 73
    if-ne v4, v6, :cond_2

    .line 74
    .line 75
    :goto_2
    add-int/lit8 v4, v1, 0x1

    .line 76
    .line 77
    if-ge v4, v2, :cond_1

    .line 78
    .line 79
    aget-byte v5, v3, v1

    .line 80
    .line 81
    int-to-char v5, v5

    .line 82
    if-ne v5, v6, :cond_0

    .line 83
    .line 84
    aget-byte v5, v3, v4

    .line 85
    .line 86
    int-to-char v5, v5

    .line 87
    if-ne v5, v7, :cond_0

    .line 88
    .line 89
    add-int/lit8 v2, v1, 0x2

    .line 90
    .line 91
    move v1, v2

    .line 92
    goto :goto_2

    .line 93
    :cond_0
    move v1, v4

    .line 94
    goto :goto_2

    .line 95
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zzc()I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    sub-int/2addr v2, v1

    .line 100
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzek;->zzM(I)V

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_2
    move v1, v5

    .line 105
    goto :goto_1

    .line 106
    :cond_3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzek;->zzM(I)V

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_4
    return-void
.end method

.method private static zzd(Lcom/google/android/gms/internal/ads/zzek;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zzc()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zzd()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    :goto_0
    move v3, v0

    .line 14
    :goto_1
    if-ge v1, v2, :cond_5

    .line 15
    .line 16
    if-nez v3, :cond_5

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    aget-byte v3, v3, v1

    .line 23
    .line 24
    int-to-char v3, v3

    .line 25
    const/16 v4, 0x41

    .line 26
    .line 27
    if-lt v3, v4, :cond_0

    .line 28
    .line 29
    const/16 v4, 0x5a

    .line 30
    .line 31
    if-le v3, v4, :cond_4

    .line 32
    .line 33
    :cond_0
    const/16 v4, 0x61

    .line 34
    .line 35
    if-lt v3, v4, :cond_1

    .line 36
    .line 37
    const/16 v4, 0x7a

    .line 38
    .line 39
    if-le v3, v4, :cond_4

    .line 40
    .line 41
    :cond_1
    const/16 v4, 0x30

    .line 42
    .line 43
    if-lt v3, v4, :cond_2

    .line 44
    .line 45
    const/16 v4, 0x39

    .line 46
    .line 47
    if-le v3, v4, :cond_4

    .line 48
    .line 49
    :cond_2
    const/16 v4, 0x23

    .line 50
    .line 51
    if-eq v3, v4, :cond_4

    .line 52
    .line 53
    const/16 v4, 0x2d

    .line 54
    .line 55
    if-eq v3, v4, :cond_4

    .line 56
    .line 57
    const/16 v4, 0x2e

    .line 58
    .line 59
    if-eq v3, v4, :cond_4

    .line 60
    .line 61
    const/16 v4, 0x5f

    .line 62
    .line 63
    if-ne v3, v4, :cond_3

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_3
    const/4 v3, 0x1

    .line 67
    goto :goto_1

    .line 68
    :cond_4
    :goto_2
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    add-int/lit8 v1, v1, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zzc()I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    sub-int/2addr v1, v0

    .line 79
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzek;->zzM(I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    return-object p0
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzek;)Ljava/util/List;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x1

    .line 5
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzalu;->zzd:Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzek;->zzc()I

    .line 12
    .line 13
    .line 14
    move-result v5

    .line 15
    :cond_0
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 16
    .line 17
    move-object/from16 v7, p1

    .line 18
    .line 19
    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzek;->zzz(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    if-eqz v6, :cond_0

    .line 28
    .line 29
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzalu;->zzc:Lcom/google/android/gms/internal/ads/zzek;

    .line 30
    .line 31
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 32
    .line 33
    .line 34
    move-result-object v8

    .line 35
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzek;->zzc()I

    .line 36
    .line 37
    .line 38
    move-result v7

    .line 39
    invoke-virtual {v6, v8, v7}, Lcom/google/android/gms/internal/ads/zzek;->zzJ([BI)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 43
    .line 44
    .line 45
    new-instance v5, Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .line 49
    .line 50
    :goto_0
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzalu;->zzc(Lcom/google/android/gms/internal/ads/zzek;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzek;->zza()I

    .line 54
    .line 55
    .line 56
    move-result v7

    .line 57
    const-string v8, "{"

    .line 58
    .line 59
    const/4 v9, 0x5

    .line 60
    const-string v10, ""

    .line 61
    .line 62
    if-ge v7, v9, :cond_1

    .line 63
    .line 64
    :goto_1
    const/4 v7, 0x0

    .line 65
    goto/16 :goto_5

    .line 66
    .line 67
    :cond_1
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 68
    .line 69
    invoke-virtual {v6, v9, v7}, Lcom/google/android/gms/internal/ads/zzek;->zzB(ILjava/nio/charset/Charset;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    const-string v9, "::cue"

    .line 74
    .line 75
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v7

    .line 79
    if-nez v7, :cond_2

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_2
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzek;->zzc()I

    .line 83
    .line 84
    .line 85
    move-result v7

    .line 86
    invoke-static {v6, v3}, Lcom/google/android/gms/internal/ads/zzalu;->zza(Lcom/google/android/gms/internal/ads/zzek;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v9

    .line 90
    if-nez v9, :cond_3

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_3
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v12

    .line 97
    if-eqz v12, :cond_4

    .line 98
    .line 99
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 100
    .line 101
    .line 102
    move-object v7, v10

    .line 103
    goto :goto_5

    .line 104
    :cond_4
    const-string v7, "("

    .line 105
    .line 106
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v7

    .line 110
    if-eqz v7, :cond_7

    .line 111
    .line 112
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzek;->zzc()I

    .line 113
    .line 114
    .line 115
    move-result v7

    .line 116
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzek;->zzd()I

    .line 117
    .line 118
    .line 119
    move-result v9

    .line 120
    move v12, v4

    .line 121
    :goto_2
    if-ge v7, v9, :cond_6

    .line 122
    .line 123
    if-nez v12, :cond_6

    .line 124
    .line 125
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 126
    .line 127
    .line 128
    move-result-object v12

    .line 129
    add-int/lit8 v13, v7, 0x1

    .line 130
    .line 131
    aget-byte v7, v12, v7

    .line 132
    .line 133
    int-to-char v7, v7

    .line 134
    const/16 v12, 0x29

    .line 135
    .line 136
    if-ne v7, v12, :cond_5

    .line 137
    .line 138
    move v12, v2

    .line 139
    goto :goto_3

    .line 140
    :cond_5
    move v12, v4

    .line 141
    :goto_3
    move v7, v13

    .line 142
    goto :goto_2

    .line 143
    :cond_6
    add-int/2addr v7, v1

    .line 144
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzek;->zzc()I

    .line 145
    .line 146
    .line 147
    move-result v9

    .line 148
    sub-int/2addr v7, v9

    .line 149
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 150
    .line 151
    invoke-virtual {v6, v7, v9}, Lcom/google/android/gms/internal/ads/zzek;->zzB(ILjava/nio/charset/Charset;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v7

    .line 155
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v7

    .line 159
    goto :goto_4

    .line 160
    :cond_7
    const/4 v7, 0x0

    .line 161
    :goto_4
    invoke-static {v6, v3}, Lcom/google/android/gms/internal/ads/zzalu;->zza(Lcom/google/android/gms/internal/ads/zzek;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v9

    .line 165
    const-string v12, ")"

    .line 166
    .line 167
    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v9

    .line 171
    if-nez v9, :cond_8

    .line 172
    .line 173
    goto :goto_1

    .line 174
    :cond_8
    :goto_5
    if-eqz v7, :cond_2f

    .line 175
    .line 176
    invoke-static {v6, v3}, Lcom/google/android/gms/internal/ads/zzalu;->zza(Lcom/google/android/gms/internal/ads/zzek;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v9

    .line 180
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v8

    .line 184
    if-nez v8, :cond_9

    .line 185
    .line 186
    goto/16 :goto_14

    .line 187
    .line 188
    :cond_9
    new-instance v8, Lcom/google/android/gms/internal/ads/zzalv;

    .line 189
    .line 190
    invoke-direct {v8}, Lcom/google/android/gms/internal/ads/zzalv;-><init>()V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v9

    .line 197
    if-eqz v9, :cond_b

    .line 198
    .line 199
    :cond_a
    :goto_6
    move v7, v4

    .line 200
    const/4 v9, 0x0

    .line 201
    goto :goto_8

    .line 202
    :cond_b
    const/16 v9, 0x5b

    .line 203
    .line 204
    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(I)I

    .line 205
    .line 206
    .line 207
    move-result v9

    .line 208
    if-eq v9, v1, :cond_d

    .line 209
    .line 210
    sget-object v12, Lcom/google/android/gms/internal/ads/zzalu;->zza:Ljava/util/regex/Pattern;

    .line 211
    .line 212
    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v13

    .line 216
    invoke-virtual {v12, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 217
    .line 218
    .line 219
    move-result-object v12

    .line 220
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->matches()Z

    .line 221
    .line 222
    .line 223
    move-result v13

    .line 224
    if-eqz v13, :cond_c

    .line 225
    .line 226
    invoke-virtual {v12, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v12

    .line 230
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v8, v12}, Lcom/google/android/gms/internal/ads/zzalv;->zzv(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    :cond_c
    invoke-virtual {v7, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v7

    .line 240
    :cond_d
    sget-object v9, Lcom/google/android/gms/internal/ads/zzeu;->zza:Ljava/lang/String;

    .line 241
    .line 242
    const-string v9, "\\."

    .line 243
    .line 244
    invoke-virtual {v7, v9, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v7

    .line 248
    aget-object v9, v7, v4

    .line 249
    .line 250
    const/16 v12, 0x23

    .line 251
    .line 252
    invoke-virtual {v9, v12}, Ljava/lang/String;->indexOf(I)I

    .line 253
    .line 254
    .line 255
    move-result v12

    .line 256
    if-eq v12, v1, :cond_e

    .line 257
    .line 258
    invoke-virtual {v9, v4, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v13

    .line 262
    invoke-virtual {v8, v13}, Lcom/google/android/gms/internal/ads/zzalv;->zzu(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    add-int/2addr v12, v2

    .line 266
    invoke-virtual {v9, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v9

    .line 270
    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/ads/zzalv;->zzt(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    goto :goto_7

    .line 274
    :cond_e
    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/ads/zzalv;->zzu(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    :goto_7
    array-length v9, v7

    .line 278
    if-le v9, v2, :cond_a

    .line 279
    .line 280
    invoke-static {v7, v2, v9}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v7

    .line 284
    check-cast v7, [Ljava/lang/String;

    .line 285
    .line 286
    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/ads/zzalv;->zzs([Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    goto :goto_6

    .line 290
    :goto_8
    const-string v12, "}"

    .line 291
    .line 292
    if-nez v7, :cond_2d

    .line 293
    .line 294
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzek;->zzc()I

    .line 295
    .line 296
    .line 297
    move-result v7

    .line 298
    invoke-static {v6, v3}, Lcom/google/android/gms/internal/ads/zzalu;->zza(Lcom/google/android/gms/internal/ads/zzek;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v9

    .line 302
    if-eqz v9, :cond_f

    .line 303
    .line 304
    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 305
    .line 306
    .line 307
    move-result v13

    .line 308
    if-eqz v13, :cond_10

    .line 309
    .line 310
    :cond_f
    move v13, v2

    .line 311
    goto :goto_9

    .line 312
    :cond_10
    move v13, v4

    .line 313
    :goto_9
    if-nez v13, :cond_2c

    .line 314
    .line 315
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 316
    .line 317
    .line 318
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzalu;->zzc(Lcom/google/android/gms/internal/ads/zzek;)V

    .line 319
    .line 320
    .line 321
    invoke-static {v6, v3}, Lcom/google/android/gms/internal/ads/zzalu;->zzd(Lcom/google/android/gms/internal/ads/zzek;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v7

    .line 325
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 326
    .line 327
    .line 328
    move-result v14

    .line 329
    if-eqz v14, :cond_11

    .line 330
    .line 331
    goto/16 :goto_13

    .line 332
    .line 333
    :cond_11
    invoke-static {v6, v3}, Lcom/google/android/gms/internal/ads/zzalu;->zza(Lcom/google/android/gms/internal/ads/zzek;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v14

    .line 337
    const-string v15, ":"

    .line 338
    .line 339
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 340
    .line 341
    .line 342
    move-result v14

    .line 343
    if-nez v14, :cond_12

    .line 344
    .line 345
    goto/16 :goto_13

    .line 346
    .line 347
    :cond_12
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzalu;->zzc(Lcom/google/android/gms/internal/ads/zzek;)V

    .line 348
    .line 349
    .line 350
    new-instance v14, Ljava/lang/StringBuilder;

    .line 351
    .line 352
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 353
    .line 354
    .line 355
    move v15, v4

    .line 356
    :goto_a
    const-string v1, ";"

    .line 357
    .line 358
    if-nez v15, :cond_16

    .line 359
    .line 360
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzek;->zzc()I

    .line 361
    .line 362
    .line 363
    move-result v4

    .line 364
    invoke-static {v6, v3}, Lcom/google/android/gms/internal/ads/zzalu;->zza(Lcom/google/android/gms/internal/ads/zzek;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v11

    .line 368
    if-nez v11, :cond_13

    .line 369
    .line 370
    const/4 v4, 0x0

    .line 371
    goto :goto_d

    .line 372
    :cond_13
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 373
    .line 374
    .line 375
    move-result v16

    .line 376
    if-nez v16, :cond_15

    .line 377
    .line 378
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 379
    .line 380
    .line 381
    move-result v1

    .line 382
    if-eqz v1, :cond_14

    .line 383
    .line 384
    goto :goto_c

    .line 385
    :cond_14
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    :goto_b
    const/4 v4, 0x0

    .line 389
    goto :goto_a

    .line 390
    :cond_15
    :goto_c
    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 391
    .line 392
    .line 393
    move v15, v2

    .line 394
    goto :goto_b

    .line 395
    :cond_16
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v4

    .line 399
    :goto_d
    if-eqz v4, :cond_2c

    .line 400
    .line 401
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 402
    .line 403
    .line 404
    move-result v11

    .line 405
    if-eqz v11, :cond_17

    .line 406
    .line 407
    goto/16 :goto_13

    .line 408
    .line 409
    :cond_17
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzek;->zzc()I

    .line 410
    .line 411
    .line 412
    move-result v11

    .line 413
    invoke-static {v6, v3}, Lcom/google/android/gms/internal/ads/zzalu;->zza(Lcom/google/android/gms/internal/ads/zzek;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v14

    .line 417
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 418
    .line 419
    .line 420
    move-result v1

    .line 421
    if-eqz v1, :cond_18

    .line 422
    .line 423
    goto :goto_e

    .line 424
    :cond_18
    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 425
    .line 426
    .line 427
    move-result v1

    .line 428
    if-eqz v1, :cond_2c

    .line 429
    .line 430
    invoke-virtual {v6, v11}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 431
    .line 432
    .line 433
    :goto_e
    const-string v1, "color"

    .line 434
    .line 435
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 436
    .line 437
    .line 438
    move-result v1

    .line 439
    if-eqz v1, :cond_19

    .line 440
    .line 441
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzdi;->zza(Ljava/lang/String;)I

    .line 442
    .line 443
    .line 444
    move-result v1

    .line 445
    invoke-virtual {v8, v1}, Lcom/google/android/gms/internal/ads/zzalv;->zzk(I)Lcom/google/android/gms/internal/ads/zzalv;

    .line 446
    .line 447
    .line 448
    goto/16 :goto_13

    .line 449
    .line 450
    :cond_19
    const-string v1, "background-color"

    .line 451
    .line 452
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 453
    .line 454
    .line 455
    move-result v1

    .line 456
    if-eqz v1, :cond_1a

    .line 457
    .line 458
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzdi;->zza(Ljava/lang/String;)I

    .line 459
    .line 460
    .line 461
    move-result v1

    .line 462
    invoke-virtual {v8, v1}, Lcom/google/android/gms/internal/ads/zzalv;->zzh(I)Lcom/google/android/gms/internal/ads/zzalv;

    .line 463
    .line 464
    .line 465
    goto/16 :goto_13

    .line 466
    .line 467
    :cond_1a
    const-string v1, "ruby-position"

    .line 468
    .line 469
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 470
    .line 471
    .line 472
    move-result v1

    .line 473
    const/4 v11, 0x2

    .line 474
    if-eqz v1, :cond_1c

    .line 475
    .line 476
    const-string v1, "over"

    .line 477
    .line 478
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 479
    .line 480
    .line 481
    move-result v1

    .line 482
    if-eqz v1, :cond_1b

    .line 483
    .line 484
    invoke-virtual {v8, v2}, Lcom/google/android/gms/internal/ads/zzalv;->zzp(I)Lcom/google/android/gms/internal/ads/zzalv;

    .line 485
    .line 486
    .line 487
    goto/16 :goto_13

    .line 488
    .line 489
    :cond_1b
    const-string v1, "under"

    .line 490
    .line 491
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 492
    .line 493
    .line 494
    move-result v1

    .line 495
    if-eqz v1, :cond_2c

    .line 496
    .line 497
    invoke-virtual {v8, v11}, Lcom/google/android/gms/internal/ads/zzalv;->zzp(I)Lcom/google/android/gms/internal/ads/zzalv;

    .line 498
    .line 499
    .line 500
    goto/16 :goto_13

    .line 501
    .line 502
    :cond_1c
    const-string v1, "text-combine-upright"

    .line 503
    .line 504
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 505
    .line 506
    .line 507
    move-result v1

    .line 508
    if-eqz v1, :cond_1f

    .line 509
    .line 510
    const-string v1, "all"

    .line 511
    .line 512
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 513
    .line 514
    .line 515
    move-result v1

    .line 516
    if-nez v1, :cond_1d

    .line 517
    .line 518
    const-string v1, "digits"

    .line 519
    .line 520
    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 521
    .line 522
    .line 523
    move-result v1

    .line 524
    if-eqz v1, :cond_1e

    .line 525
    .line 526
    :cond_1d
    move v1, v2

    .line 527
    goto :goto_f

    .line 528
    :cond_1e
    const/4 v1, 0x0

    .line 529
    :goto_f
    invoke-virtual {v8, v1}, Lcom/google/android/gms/internal/ads/zzalv;->zzj(Z)Lcom/google/android/gms/internal/ads/zzalv;

    .line 530
    .line 531
    .line 532
    goto/16 :goto_13

    .line 533
    .line 534
    :cond_1f
    const-string v1, "text-decoration"

    .line 535
    .line 536
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 537
    .line 538
    .line 539
    move-result v1

    .line 540
    if-eqz v1, :cond_20

    .line 541
    .line 542
    const-string v1, "underline"

    .line 543
    .line 544
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 545
    .line 546
    .line 547
    move-result v1

    .line 548
    if-eqz v1, :cond_2c

    .line 549
    .line 550
    invoke-virtual {v8, v2}, Lcom/google/android/gms/internal/ads/zzalv;->zzq(Z)Lcom/google/android/gms/internal/ads/zzalv;

    .line 551
    .line 552
    .line 553
    goto/16 :goto_13

    .line 554
    .line 555
    :cond_20
    const-string v1, "font-family"

    .line 556
    .line 557
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 558
    .line 559
    .line 560
    move-result v1

    .line 561
    if-eqz v1, :cond_21

    .line 562
    .line 563
    invoke-virtual {v8, v4}, Lcom/google/android/gms/internal/ads/zzalv;->zzl(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzalv;

    .line 564
    .line 565
    .line 566
    goto/16 :goto_13

    .line 567
    .line 568
    :cond_21
    const-string v1, "font-weight"

    .line 569
    .line 570
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 571
    .line 572
    .line 573
    move-result v1

    .line 574
    if-eqz v1, :cond_22

    .line 575
    .line 576
    const-string v1, "bold"

    .line 577
    .line 578
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 579
    .line 580
    .line 581
    move-result v1

    .line 582
    if-eqz v1, :cond_2c

    .line 583
    .line 584
    invoke-virtual {v8, v2}, Lcom/google/android/gms/internal/ads/zzalv;->zzi(Z)Lcom/google/android/gms/internal/ads/zzalv;

    .line 585
    .line 586
    .line 587
    goto/16 :goto_13

    .line 588
    .line 589
    :cond_22
    const-string v1, "font-style"

    .line 590
    .line 591
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 592
    .line 593
    .line 594
    move-result v1

    .line 595
    if-eqz v1, :cond_23

    .line 596
    .line 597
    const-string v1, "italic"

    .line 598
    .line 599
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 600
    .line 601
    .line 602
    move-result v1

    .line 603
    if-eqz v1, :cond_2c

    .line 604
    .line 605
    invoke-virtual {v8, v2}, Lcom/google/android/gms/internal/ads/zzalv;->zzo(Z)Lcom/google/android/gms/internal/ads/zzalv;

    .line 606
    .line 607
    .line 608
    goto/16 :goto_13

    .line 609
    .line 610
    :cond_23
    const-string v1, "font-size"

    .line 611
    .line 612
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 613
    .line 614
    .line 615
    move-result v1

    .line 616
    if-eqz v1, :cond_2c

    .line 617
    .line 618
    sget-object v1, Lcom/google/android/gms/internal/ads/zzalu;->zzb:Ljava/util/regex/Pattern;

    .line 619
    .line 620
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzfui;->zza(Ljava/lang/String;)Ljava/lang/String;

    .line 621
    .line 622
    .line 623
    move-result-object v7

    .line 624
    invoke-virtual {v1, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 625
    .line 626
    .line 627
    move-result-object v1

    .line 628
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    .line 629
    .line 630
    .line 631
    move-result v7

    .line 632
    if-nez v7, :cond_24

    .line 633
    .line 634
    new-instance v1, Ljava/lang/StringBuilder;

    .line 635
    .line 636
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 637
    .line 638
    .line 639
    const-string v7, "Invalid font-size: \'"

    .line 640
    .line 641
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    .line 643
    .line 644
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    .line 646
    .line 647
    const-string v4, "\'."

    .line 648
    .line 649
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    .line 651
    .line 652
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 653
    .line 654
    .line 655
    move-result-object v1

    .line 656
    const-string v4, "WebvttCssParser"

    .line 657
    .line 658
    invoke-static {v4, v1}, Lcom/google/android/gms/internal/ads/zzdx;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    .line 660
    .line 661
    goto :goto_13

    .line 662
    :cond_24
    invoke-virtual {v1, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 663
    .line 664
    .line 665
    move-result-object v4

    .line 666
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 667
    .line 668
    .line 669
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 670
    .line 671
    .line 672
    move-result v7

    .line 673
    const/16 v12, 0x25

    .line 674
    .line 675
    if-eq v7, v12, :cond_27

    .line 676
    .line 677
    const/16 v12, 0xca8

    .line 678
    .line 679
    if-eq v7, v12, :cond_26

    .line 680
    .line 681
    const/16 v12, 0xe08

    .line 682
    .line 683
    if-eq v7, v12, :cond_25

    .line 684
    .line 685
    goto :goto_10

    .line 686
    :cond_25
    const-string v7, "px"

    .line 687
    .line 688
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 689
    .line 690
    .line 691
    move-result v4

    .line 692
    if-eqz v4, :cond_28

    .line 693
    .line 694
    const/4 v4, 0x0

    .line 695
    goto :goto_11

    .line 696
    :cond_26
    const-string v7, "em"

    .line 697
    .line 698
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 699
    .line 700
    .line 701
    move-result v4

    .line 702
    if-eqz v4, :cond_28

    .line 703
    .line 704
    move v4, v2

    .line 705
    goto :goto_11

    .line 706
    :cond_27
    const-string v7, "%"

    .line 707
    .line 708
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 709
    .line 710
    .line 711
    move-result v4

    .line 712
    if-eqz v4, :cond_28

    .line 713
    .line 714
    move v4, v11

    .line 715
    goto :goto_11

    .line 716
    :cond_28
    :goto_10
    const/4 v4, -0x1

    .line 717
    :goto_11
    if-eqz v4, :cond_2b

    .line 718
    .line 719
    if-eq v4, v2, :cond_2a

    .line 720
    .line 721
    if-ne v4, v11, :cond_29

    .line 722
    .line 723
    const/4 v4, 0x3

    .line 724
    invoke-virtual {v8, v4}, Lcom/google/android/gms/internal/ads/zzalv;->zzn(I)Lcom/google/android/gms/internal/ads/zzalv;

    .line 725
    .line 726
    .line 727
    goto :goto_12

    .line 728
    :cond_29
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 729
    .line 730
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 731
    .line 732
    .line 733
    throw v1

    .line 734
    :cond_2a
    invoke-virtual {v8, v11}, Lcom/google/android/gms/internal/ads/zzalv;->zzn(I)Lcom/google/android/gms/internal/ads/zzalv;

    .line 735
    .line 736
    .line 737
    goto :goto_12

    .line 738
    :cond_2b
    invoke-virtual {v8, v2}, Lcom/google/android/gms/internal/ads/zzalv;->zzn(I)Lcom/google/android/gms/internal/ads/zzalv;

    .line 739
    .line 740
    .line 741
    :goto_12
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 742
    .line 743
    .line 744
    move-result-object v1

    .line 745
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 746
    .line 747
    .line 748
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 749
    .line 750
    .line 751
    move-result v1

    .line 752
    invoke-virtual {v8, v1}, Lcom/google/android/gms/internal/ads/zzalv;->zzm(F)Lcom/google/android/gms/internal/ads/zzalv;

    .line 753
    .line 754
    .line 755
    :cond_2c
    :goto_13
    move v7, v13

    .line 756
    const/4 v1, -0x1

    .line 757
    const/4 v4, 0x0

    .line 758
    goto/16 :goto_8

    .line 759
    .line 760
    :cond_2d
    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 761
    .line 762
    .line 763
    move-result v1

    .line 764
    if-eqz v1, :cond_2e

    .line 765
    .line 766
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 767
    .line 768
    .line 769
    :cond_2e
    const/4 v1, -0x1

    .line 770
    const/4 v4, 0x0

    .line 771
    goto/16 :goto_0

    .line 772
    .line 773
    :cond_2f
    :goto_14
    return-object v5
.end method
