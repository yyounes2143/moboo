.class public final Lcom/google/android/gms/internal/ads/zzamk;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzadn;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzaml;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzek;

.field private zzc:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaml;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    const-string v3, "audio/ac4"

    .line 9
    .line 10
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzaml;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzamk;->zza:Lcom/google/android/gms/internal/ads/zzaml;

    .line 14
    .line 15
    new-instance v0, Lcom/google/android/gms/internal/ads/zzek;

    .line 16
    .line 17
    const/16 v1, 0x4000

    .line 18
    .line 19
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzek;-><init>(I)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzamk;->zzb:Lcom/google/android/gms/internal/ads/zzek;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzado;Lcom/google/android/gms/internal/ads/zzaej;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzamk;->zzb:Lcom/google/android/gms/internal/ads/zzek;

    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/16 v1, 0x4000

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-interface {p1, v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzado;->zza([BII)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    const/4 v0, -0x1

    .line 15
    if-ne p1, v0, :cond_0

    .line 16
    .line 17
    return v0

    .line 18
    :cond_0
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzek;->zzK(I)V

    .line 22
    .line 23
    .line 24
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzamk;->zzc:Z

    .line 25
    .line 26
    if-nez p1, :cond_1

    .line 27
    .line 28
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzamk;->zza:Lcom/google/android/gms/internal/ads/zzaml;

    .line 29
    .line 30
    const-wide/16 v0, 0x0

    .line 31
    .line 32
    const/4 v3, 0x4

    .line 33
    invoke-virtual {p1, v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzaml;->zzd(JI)V

    .line 34
    .line 35
    .line 36
    const/4 p1, 0x1

    .line 37
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzamk;->zzc:Z

    .line 38
    .line 39
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzamk;->zza:Lcom/google/android/gms/internal/ads/zzaml;

    .line 40
    .line 41
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzaml;->zza(Lcom/google/android/gms/internal/ads/zzek;)V

    .line 42
    .line 43
    .line 44
    return v2
.end method

.method public final synthetic zzc()Lcom/google/android/gms/internal/ads/zzadn;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final synthetic zzd()Ljava/util/List;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfyc;->zzn()Lcom/google/android/gms/internal/ads/zzfyc;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzadq;)V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaof;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    const/high16 v3, -0x80000000

    .line 6
    .line 7
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzaof;-><init>(III)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzamk;->zza:Lcom/google/android/gms/internal/ads/zzaml;

    .line 11
    .line 12
    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzaml;->zzb(Lcom/google/android/gms/internal/ads/zzadq;Lcom/google/android/gms/internal/ads/zzaof;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzadq;->zzG()V

    .line 16
    .line 17
    .line 18
    new-instance v0, Lcom/google/android/gms/internal/ads/zzael;

    .line 19
    .line 20
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    const-wide/16 v3, 0x0

    .line 26
    .line 27
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzael;-><init>(JJ)V

    .line 28
    .line 29
    .line 30
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzadq;->zzP(Lcom/google/android/gms/internal/ads/zzaem;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final zzf(JJ)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzamk;->zzc:Z

    .line 3
    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzamk;->zza:Lcom/google/android/gms/internal/ads/zzaml;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaml;->zze()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzado;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    new-instance v2, Lcom/google/android/gms/internal/ads/zzek;

    .line 4
    .line 5
    const/16 v3, 0xa

    .line 6
    .line 7
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzek;-><init>(I)V

    .line 8
    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    move v5, v4

    .line 12
    :goto_0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 13
    .line 14
    .line 15
    move-result-object v6

    .line 16
    move-object/from16 v7, p1

    .line 17
    .line 18
    check-cast v7, Lcom/google/android/gms/internal/ads/zzadd;

    .line 19
    .line 20
    invoke-virtual {v7, v6, v4, v3, v4}, Lcom/google/android/gms/internal/ads/zzadd;->zzm([BIIZ)Z

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzo()I

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    const v8, 0x494433

    .line 31
    .line 32
    .line 33
    const/4 v9, 0x3

    .line 34
    if-eq v6, v8, :cond_7

    .line 35
    .line 36
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzado;->zzj()V

    .line 37
    .line 38
    .line 39
    move-object/from16 v6, p1

    .line 40
    .line 41
    check-cast v6, Lcom/google/android/gms/internal/ads/zzadd;

    .line 42
    .line 43
    invoke-virtual {v6, v5, v4}, Lcom/google/android/gms/internal/ads/zzadd;->zzl(IZ)Z

    .line 44
    .line 45
    .line 46
    move v3, v4

    .line 47
    move v7, v5

    .line 48
    :goto_1
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 49
    .line 50
    .line 51
    move-result-object v8

    .line 52
    const/4 v10, 0x7

    .line 53
    invoke-virtual {v6, v8, v4, v10, v4}, Lcom/google/android/gms/internal/ads/zzadd;->zzm([BIIZ)Z

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzq()I

    .line 60
    .line 61
    .line 62
    move-result v8

    .line 63
    const v11, 0xac40

    .line 64
    .line 65
    .line 66
    const v12, 0xac41

    .line 67
    .line 68
    .line 69
    if-eq v8, v11, :cond_1

    .line 70
    .line 71
    if-eq v8, v12, :cond_1

    .line 72
    .line 73
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzado;->zzj()V

    .line 74
    .line 75
    .line 76
    add-int/2addr v7, v1

    .line 77
    sub-int v3, v7, v5

    .line 78
    .line 79
    const/16 v8, 0x2000

    .line 80
    .line 81
    if-ge v3, v8, :cond_0

    .line 82
    .line 83
    invoke-virtual {v6, v7, v4}, Lcom/google/android/gms/internal/ads/zzadd;->zzl(IZ)Z

    .line 84
    .line 85
    .line 86
    move v3, v4

    .line 87
    goto :goto_1

    .line 88
    :cond_0
    return v4

    .line 89
    :cond_1
    add-int/2addr v3, v1

    .line 90
    const/4 v11, 0x4

    .line 91
    if-lt v3, v11, :cond_2

    .line 92
    .line 93
    return v1

    .line 94
    :cond_2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 95
    .line 96
    .line 97
    move-result-object v13

    .line 98
    sget v14, Lcom/google/android/gms/internal/ads/zzacr;->zza:I

    .line 99
    .line 100
    array-length v14, v13

    .line 101
    const/4 v15, -0x1

    .line 102
    if-ge v14, v10, :cond_3

    .line 103
    .line 104
    move/from16 v16, v0

    .line 105
    .line 106
    move v0, v15

    .line 107
    goto :goto_3

    .line 108
    :cond_3
    aget-byte v14, v13, v0

    .line 109
    .line 110
    and-int/lit16 v14, v14, 0xff

    .line 111
    .line 112
    move/from16 v16, v0

    .line 113
    .line 114
    aget-byte v0, v13, v9

    .line 115
    .line 116
    shl-int/lit8 v14, v14, 0x8

    .line 117
    .line 118
    and-int/lit16 v0, v0, 0xff

    .line 119
    .line 120
    or-int/2addr v0, v14

    .line 121
    const v14, 0xffff

    .line 122
    .line 123
    .line 124
    if-ne v0, v14, :cond_4

    .line 125
    .line 126
    aget-byte v0, v13, v11

    .line 127
    .line 128
    and-int/lit16 v0, v0, 0xff

    .line 129
    .line 130
    const/4 v11, 0x5

    .line 131
    aget-byte v11, v13, v11

    .line 132
    .line 133
    and-int/lit16 v11, v11, 0xff

    .line 134
    .line 135
    shl-int/lit8 v0, v0, 0x10

    .line 136
    .line 137
    shl-int/lit8 v11, v11, 0x8

    .line 138
    .line 139
    const/4 v14, 0x6

    .line 140
    aget-byte v13, v13, v14

    .line 141
    .line 142
    and-int/lit16 v13, v13, 0xff

    .line 143
    .line 144
    or-int/2addr v0, v11

    .line 145
    or-int/2addr v0, v13

    .line 146
    goto :goto_2

    .line 147
    :cond_4
    move v10, v11

    .line 148
    :goto_2
    if-ne v8, v12, :cond_5

    .line 149
    .line 150
    add-int/lit8 v10, v10, 0x2

    .line 151
    .line 152
    :cond_5
    add-int/2addr v0, v10

    .line 153
    :goto_3
    if-ne v0, v15, :cond_6

    .line 154
    .line 155
    return v4

    .line 156
    :cond_6
    add-int/lit8 v0, v0, -0x7

    .line 157
    .line 158
    invoke-virtual {v6, v0, v4}, Lcom/google/android/gms/internal/ads/zzadd;->zzl(IZ)Z

    .line 159
    .line 160
    .line 161
    move/from16 v0, v16

    .line 162
    .line 163
    goto :goto_1

    .line 164
    :cond_7
    move/from16 v16, v0

    .line 165
    .line 166
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/zzek;->zzM(I)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzl()I

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    add-int/lit8 v6, v0, 0xa

    .line 174
    .line 175
    add-int/2addr v5, v6

    .line 176
    invoke-virtual {v7, v0, v4}, Lcom/google/android/gms/internal/ads/zzadd;->zzl(IZ)Z

    .line 177
    .line 178
    .line 179
    move/from16 v0, v16

    .line 180
    .line 181
    goto/16 :goto_0
.end method
