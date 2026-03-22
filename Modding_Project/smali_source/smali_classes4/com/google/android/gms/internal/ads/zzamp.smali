.class public final Lcom/google/android/gms/internal/ads/zzamp;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzamr;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzek;

.field private final zzb:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final zzc:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzd:I

.field private final zze:Ljava/lang/String;

.field private zzf:Ljava/lang/String;

.field private zzg:Lcom/google/android/gms/internal/ads/zzaet;

.field private zzh:I

.field private zzi:I

.field private zzj:I

.field private zzk:J

.field private zzl:Lcom/google/android/gms/internal/ads/zzz;

.field private zzm:I

.field private zzn:I

.field private zzo:I

.field private zzp:I

.field private zzq:J


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p4, Lcom/google/android/gms/internal/ads/zzek;

    .line 5
    .line 6
    new-array p3, p3, [B

    .line 7
    .line 8
    invoke-direct {p4, p3}, Lcom/google/android/gms/internal/ads/zzek;-><init>([B)V

    .line 9
    .line 10
    .line 11
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzamp;->zza:Lcom/google/android/gms/internal/ads/zzek;

    .line 12
    .line 13
    const/4 p3, 0x0

    .line 14
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzamp;->zzh:I

    .line 15
    .line 16
    const-wide p3, -0x7fffffffffffffffL    # -4.9E-324

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzamp;->zzq:J

    .line 22
    .line 23
    new-instance p3, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 24
    .line 25
    invoke-direct {p3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzamp;->zzb:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 29
    .line 30
    const/4 p3, -0x1

    .line 31
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzamp;->zzo:I

    .line 32
    .line 33
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzamp;->zzp:I

    .line 34
    .line 35
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamp;->zzc:Ljava/lang/String;

    .line 36
    .line 37
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzamp;->zzd:I

    .line 38
    .line 39
    const-string p1, "video/mp2t"

    .line 40
    .line 41
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamp;->zze:Ljava/lang/String;

    .line 42
    .line 43
    return-void
.end method

.method private final zzf(Lcom/google/android/gms/internal/ads/zzadk;)V
    .locals 4
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
    .end annotation

    .line 1
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzadk;->zzb:I

    .line 2
    .line 3
    const v1, -0x7fffffff

    .line 4
    .line 5
    .line 6
    if-eq v0, v1, :cond_3

    .line 7
    .line 8
    iget v1, p1, Lcom/google/android/gms/internal/ads/zzadk;->zzc:I

    .line 9
    .line 10
    const/4 v2, -0x1

    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzamp;->zzl:Lcom/google/android/gms/internal/ads/zzz;

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    iget v3, v2, Lcom/google/android/gms/internal/ads/zzz;->zzE:I

    .line 19
    .line 20
    if-ne v1, v3, :cond_1

    .line 21
    .line 22
    iget v3, v2, Lcom/google/android/gms/internal/ads/zzz;->zzF:I

    .line 23
    .line 24
    if-ne v0, v3, :cond_1

    .line 25
    .line 26
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzadk;->zza:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {v3, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-nez v2, :cond_3

    .line 35
    .line 36
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzamp;->zzl:Lcom/google/android/gms/internal/ads/zzz;

    .line 37
    .line 38
    if-nez v2, :cond_2

    .line 39
    .line 40
    new-instance v2, Lcom/google/android/gms/internal/ads/zzx;

    .line 41
    .line 42
    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzx;-><init>()V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzz;->zzb()Lcom/google/android/gms/internal/ads/zzx;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzamp;->zzf:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzx;->zzO(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 53
    .line 54
    .line 55
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzamp;->zze:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzx;->zzE(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 58
    .line 59
    .line 60
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzadk;->zza:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzx;->zzad(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzx;->zzB(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzx;->zzae(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzamp;->zzc:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzx;->zzS(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 74
    .line 75
    .line 76
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzamp;->zzd:I

    .line 77
    .line 78
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzx;->zzab(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzx;->zzaj()Lcom/google/android/gms/internal/ads/zzz;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamp;->zzl:Lcom/google/android/gms/internal/ads/zzz;

    .line 86
    .line 87
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamp;->zzg:Lcom/google/android/gms/internal/ads/zzaet;

    .line 88
    .line 89
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzaet;->zzm(Lcom/google/android/gms/internal/ads/zzz;)V

    .line 90
    .line 91
    .line 92
    :cond_3
    :goto_1
    return-void
.end method

.method private final zzg(Lcom/google/android/gms/internal/ads/zzek;[BI)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzek;->zza()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzamp;->zzi:I

    .line 6
    .line 7
    sub-int v1, p3, v1

    .line 8
    .line 9
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzamp;->zzi:I

    .line 14
    .line 15
    invoke-virtual {p1, p2, v1, v0}, Lcom/google/android/gms/internal/ads/zzek;->zzH([BII)V

    .line 16
    .line 17
    .line 18
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzamp;->zzi:I

    .line 19
    .line 20
    add-int/2addr p1, v0

    .line 21
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzamp;->zzi:I

    .line 22
    .line 23
    if-ne p1, p3, :cond_0

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    return p1

    .line 27
    :cond_0
    const/4 p1, 0x0

    .line 28
    return p1
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzek;)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaz;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzamp;->zzg:Lcom/google/android/gms/internal/ads/zzaet;

    .line 6
    .line 7
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzdc;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zza()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-lez v3, :cond_21

    .line 15
    .line 16
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzamp;->zzh:I

    .line 17
    .line 18
    const/4 v4, 0x3

    .line 19
    const/4 v5, 0x2

    .line 20
    const/4 v6, 0x0

    .line 21
    const/4 v7, 0x4

    .line 22
    const/4 v8, 0x1

    .line 23
    if-eqz v3, :cond_14

    .line 24
    .line 25
    const/4 v9, 0x5

    .line 26
    const/4 v10, 0x7

    .line 27
    const/4 v11, 0x6

    .line 28
    if-eq v3, v8, :cond_b

    .line 29
    .line 30
    if-eq v3, v5, :cond_a

    .line 31
    .line 32
    const-wide/16 v12, 0x0

    .line 33
    .line 34
    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    if-eq v3, v4, :cond_8

    .line 40
    .line 41
    if-eq v3, v7, :cond_6

    .line 42
    .line 43
    if-eq v3, v9, :cond_3

    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zza()I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzamp;->zzm:I

    .line 50
    .line 51
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzamp;->zzi:I

    .line 52
    .line 53
    sub-int/2addr v4, v5

    .line 54
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzamp;->zzg:Lcom/google/android/gms/internal/ads/zzaet;

    .line 59
    .line 60
    invoke-interface {v4, v1, v3}, Lcom/google/android/gms/internal/ads/zzaet;->zzr(Lcom/google/android/gms/internal/ads/zzek;I)V

    .line 61
    .line 62
    .line 63
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzamp;->zzi:I

    .line 64
    .line 65
    add-int/2addr v4, v3

    .line 66
    iput v4, v0, Lcom/google/android/gms/internal/ads/zzamp;->zzi:I

    .line 67
    .line 68
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzamp;->zzm:I

    .line 69
    .line 70
    if-ne v4, v3, :cond_0

    .line 71
    .line 72
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzamp;->zzq:J

    .line 73
    .line 74
    cmp-long v3, v3, v14

    .line 75
    .line 76
    if-eqz v3, :cond_1

    .line 77
    .line 78
    move v3, v8

    .line 79
    goto :goto_1

    .line 80
    :cond_1
    move v3, v6

    .line 81
    :goto_1
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzdc;->zzf(Z)V

    .line 82
    .line 83
    .line 84
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzamp;->zzg:Lcom/google/android/gms/internal/ads/zzaet;

    .line 85
    .line 86
    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzamp;->zzq:J

    .line 87
    .line 88
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzamp;->zzn:I

    .line 89
    .line 90
    if-ne v3, v7, :cond_2

    .line 91
    .line 92
    move v12, v6

    .line 93
    goto :goto_2

    .line 94
    :cond_2
    move v12, v8

    .line 95
    :goto_2
    iget v13, v0, Lcom/google/android/gms/internal/ads/zzamp;->zzm:I

    .line 96
    .line 97
    const/4 v14, 0x0

    .line 98
    const/4 v15, 0x0

    .line 99
    invoke-interface/range {v9 .. v15}, Lcom/google/android/gms/internal/ads/zzaet;->zzt(JIIILcom/google/android/gms/internal/ads/zzaes;)V

    .line 100
    .line 101
    .line 102
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzamp;->zzq:J

    .line 103
    .line 104
    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzamp;->zzk:J

    .line 105
    .line 106
    add-long/2addr v3, v7

    .line 107
    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzamp;->zzq:J

    .line 108
    .line 109
    iput v6, v0, Lcom/google/android/gms/internal/ads/zzamp;->zzh:I

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_3
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzamp;->zza:Lcom/google/android/gms/internal/ads/zzek;

    .line 113
    .line 114
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    iget v7, v0, Lcom/google/android/gms/internal/ads/zzamp;->zzp:I

    .line 119
    .line 120
    invoke-direct {v0, v1, v5, v7}, Lcom/google/android/gms/internal/ads/zzamp;->zzg(Lcom/google/android/gms/internal/ads/zzek;[BI)Z

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    if-eqz v5, :cond_0

    .line 125
    .line 126
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzamp;->zzb:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 127
    .line 128
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 129
    .line 130
    .line 131
    move-result-object v7

    .line 132
    invoke-static {v7, v5}, Lcom/google/android/gms/internal/ads/zzadm;->zze([BLjava/util/concurrent/atomic/AtomicInteger;)Lcom/google/android/gms/internal/ads/zzadk;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    iget v7, v0, Lcom/google/android/gms/internal/ads/zzamp;->zzn:I

    .line 137
    .line 138
    if-ne v7, v4, :cond_4

    .line 139
    .line 140
    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/ads/zzamp;->zzf(Lcom/google/android/gms/internal/ads/zzadk;)V

    .line 141
    .line 142
    .line 143
    :cond_4
    iget v4, v5, Lcom/google/android/gms/internal/ads/zzadk;->zzd:I

    .line 144
    .line 145
    iput v4, v0, Lcom/google/android/gms/internal/ads/zzamp;->zzm:I

    .line 146
    .line 147
    iget-wide v4, v5, Lcom/google/android/gms/internal/ads/zzadk;->zze:J

    .line 148
    .line 149
    cmp-long v7, v4, v14

    .line 150
    .line 151
    if-nez v7, :cond_5

    .line 152
    .line 153
    goto :goto_3

    .line 154
    :cond_5
    move-wide v12, v4

    .line 155
    :goto_3
    iput-wide v12, v0, Lcom/google/android/gms/internal/ads/zzamp;->zzk:J

    .line 156
    .line 157
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 158
    .line 159
    .line 160
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzamp;->zzg:Lcom/google/android/gms/internal/ads/zzaet;

    .line 161
    .line 162
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzamp;->zzp:I

    .line 163
    .line 164
    invoke-interface {v4, v3, v5}, Lcom/google/android/gms/internal/ads/zzaet;->zzr(Lcom/google/android/gms/internal/ads/zzek;I)V

    .line 165
    .line 166
    .line 167
    iput v11, v0, Lcom/google/android/gms/internal/ads/zzamp;->zzh:I

    .line 168
    .line 169
    goto/16 :goto_0

    .line 170
    .line 171
    :cond_6
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzamp;->zza:Lcom/google/android/gms/internal/ads/zzek;

    .line 172
    .line 173
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    invoke-direct {v0, v1, v4, v11}, Lcom/google/android/gms/internal/ads/zzamp;->zzg(Lcom/google/android/gms/internal/ads/zzek;[BI)Z

    .line 178
    .line 179
    .line 180
    move-result v4

    .line 181
    if-eqz v4, :cond_0

    .line 182
    .line 183
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzadm;->zzb([B)I

    .line 188
    .line 189
    .line 190
    move-result v3

    .line 191
    iput v3, v0, Lcom/google/android/gms/internal/ads/zzamp;->zzp:I

    .line 192
    .line 193
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzamp;->zzi:I

    .line 194
    .line 195
    if-le v4, v3, :cond_7

    .line 196
    .line 197
    sub-int v3, v4, v3

    .line 198
    .line 199
    sub-int/2addr v4, v3

    .line 200
    iput v4, v0, Lcom/google/android/gms/internal/ads/zzamp;->zzi:I

    .line 201
    .line 202
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzc()I

    .line 203
    .line 204
    .line 205
    move-result v4

    .line 206
    sub-int/2addr v4, v3

    .line 207
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 208
    .line 209
    .line 210
    :cond_7
    iput v9, v0, Lcom/google/android/gms/internal/ads/zzamp;->zzh:I

    .line 211
    .line 212
    goto/16 :goto_0

    .line 213
    .line 214
    :cond_8
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzamp;->zza:Lcom/google/android/gms/internal/ads/zzek;

    .line 215
    .line 216
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 217
    .line 218
    .line 219
    move-result-object v4

    .line 220
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzamp;->zzo:I

    .line 221
    .line 222
    invoke-direct {v0, v1, v4, v5}, Lcom/google/android/gms/internal/ads/zzamp;->zzg(Lcom/google/android/gms/internal/ads/zzek;[BI)Z

    .line 223
    .line 224
    .line 225
    move-result v4

    .line 226
    if-eqz v4, :cond_0

    .line 227
    .line 228
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 229
    .line 230
    .line 231
    move-result-object v4

    .line 232
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzadm;->zzd([B)Lcom/google/android/gms/internal/ads/zzadk;

    .line 233
    .line 234
    .line 235
    move-result-object v4

    .line 236
    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/ads/zzamp;->zzf(Lcom/google/android/gms/internal/ads/zzadk;)V

    .line 237
    .line 238
    .line 239
    iget v5, v4, Lcom/google/android/gms/internal/ads/zzadk;->zzd:I

    .line 240
    .line 241
    iput v5, v0, Lcom/google/android/gms/internal/ads/zzamp;->zzm:I

    .line 242
    .line 243
    iget-wide v4, v4, Lcom/google/android/gms/internal/ads/zzadk;->zze:J

    .line 244
    .line 245
    cmp-long v7, v4, v14

    .line 246
    .line 247
    if-nez v7, :cond_9

    .line 248
    .line 249
    goto :goto_4

    .line 250
    :cond_9
    move-wide v12, v4

    .line 251
    :goto_4
    iput-wide v12, v0, Lcom/google/android/gms/internal/ads/zzamp;->zzk:J

    .line 252
    .line 253
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 254
    .line 255
    .line 256
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzamp;->zzg:Lcom/google/android/gms/internal/ads/zzaet;

    .line 257
    .line 258
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzamp;->zzo:I

    .line 259
    .line 260
    invoke-interface {v4, v3, v5}, Lcom/google/android/gms/internal/ads/zzaet;->zzr(Lcom/google/android/gms/internal/ads/zzek;I)V

    .line 261
    .line 262
    .line 263
    iput v11, v0, Lcom/google/android/gms/internal/ads/zzamp;->zzh:I

    .line 264
    .line 265
    goto/16 :goto_0

    .line 266
    .line 267
    :cond_a
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzamp;->zza:Lcom/google/android/gms/internal/ads/zzek;

    .line 268
    .line 269
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 270
    .line 271
    .line 272
    move-result-object v5

    .line 273
    invoke-direct {v0, v1, v5, v10}, Lcom/google/android/gms/internal/ads/zzamp;->zzg(Lcom/google/android/gms/internal/ads/zzek;[BI)Z

    .line 274
    .line 275
    .line 276
    move-result v5

    .line 277
    if-eqz v5, :cond_0

    .line 278
    .line 279
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 280
    .line 281
    .line 282
    move-result-object v3

    .line 283
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzadm;->zza([B)I

    .line 284
    .line 285
    .line 286
    move-result v3

    .line 287
    iput v3, v0, Lcom/google/android/gms/internal/ads/zzamp;->zzo:I

    .line 288
    .line 289
    iput v4, v0, Lcom/google/android/gms/internal/ads/zzamp;->zzh:I

    .line 290
    .line 291
    goto/16 :goto_0

    .line 292
    .line 293
    :cond_b
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzamp;->zza:Lcom/google/android/gms/internal/ads/zzek;

    .line 294
    .line 295
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 296
    .line 297
    .line 298
    move-result-object v12

    .line 299
    const/16 v13, 0x12

    .line 300
    .line 301
    invoke-direct {v0, v1, v12, v13}, Lcom/google/android/gms/internal/ads/zzamp;->zzg(Lcom/google/android/gms/internal/ads/zzek;[BI)Z

    .line 302
    .line 303
    .line 304
    move-result v12

    .line 305
    if-eqz v12, :cond_0

    .line 306
    .line 307
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 308
    .line 309
    .line 310
    move-result-object v14

    .line 311
    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzamp;->zzl:Lcom/google/android/gms/internal/ads/zzz;

    .line 312
    .line 313
    if-nez v12, :cond_c

    .line 314
    .line 315
    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzamp;->zzf:Ljava/lang/String;

    .line 316
    .line 317
    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzamp;->zzc:Ljava/lang/String;

    .line 318
    .line 319
    const/16 v20, 0x8

    .line 320
    .line 321
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzamp;->zzd:I

    .line 322
    .line 323
    move/from16 v21, v9

    .line 324
    .line 325
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzamp;->zze:Ljava/lang/String;

    .line 326
    .line 327
    const/16 v19, 0x0

    .line 328
    .line 329
    move/from16 v17, v2

    .line 330
    .line 331
    move-object/from16 v18, v9

    .line 332
    .line 333
    move-object/from16 v16, v12

    .line 334
    .line 335
    invoke-static/range {v14 .. v19}, Lcom/google/android/gms/internal/ads/zzadm;->zzc([BLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzs;)Lcom/google/android/gms/internal/ads/zzz;

    .line 336
    .line 337
    .line 338
    move-result-object v2

    .line 339
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzamp;->zzl:Lcom/google/android/gms/internal/ads/zzz;

    .line 340
    .line 341
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzamp;->zzg:Lcom/google/android/gms/internal/ads/zzaet;

    .line 342
    .line 343
    invoke-interface {v9, v2}, Lcom/google/android/gms/internal/ads/zzaet;->zzm(Lcom/google/android/gms/internal/ads/zzz;)V

    .line 344
    .line 345
    .line 346
    goto :goto_5

    .line 347
    :cond_c
    move/from16 v21, v9

    .line 348
    .line 349
    const/16 v20, 0x8

    .line 350
    .line 351
    :goto_5
    sget v2, Lcom/google/android/gms/internal/ads/zzadm;->zza:I

    .line 352
    .line 353
    aget-byte v2, v14, v6

    .line 354
    .line 355
    const/16 v9, 0x1f

    .line 356
    .line 357
    const/4 v12, -0x1

    .line 358
    const/4 v15, -0x2

    .line 359
    if-eq v2, v15, :cond_f

    .line 360
    .line 361
    if-eq v2, v12, :cond_e

    .line 362
    .line 363
    if-eq v2, v9, :cond_d

    .line 364
    .line 365
    aget-byte v16, v14, v21

    .line 366
    .line 367
    and-int/lit8 v4, v16, 0x3

    .line 368
    .line 369
    shl-int/lit8 v4, v4, 0xc

    .line 370
    .line 371
    move/from16 v16, v10

    .line 372
    .line 373
    aget-byte v10, v14, v11

    .line 374
    .line 375
    and-int/lit16 v10, v10, 0xff

    .line 376
    .line 377
    shl-int/2addr v10, v7

    .line 378
    move/from16 v17, v5

    .line 379
    .line 380
    aget-byte v5, v14, v16

    .line 381
    .line 382
    and-int/lit16 v5, v5, 0xf0

    .line 383
    .line 384
    shr-int/2addr v5, v7

    .line 385
    or-int/2addr v4, v10

    .line 386
    or-int/2addr v4, v5

    .line 387
    :goto_6
    add-int/2addr v4, v8

    .line 388
    move v5, v6

    .line 389
    goto :goto_8

    .line 390
    :cond_d
    move/from16 v17, v5

    .line 391
    .line 392
    move/from16 v16, v10

    .line 393
    .line 394
    aget-byte v5, v14, v11

    .line 395
    .line 396
    and-int/2addr v4, v5

    .line 397
    shl-int/lit8 v4, v4, 0xc

    .line 398
    .line 399
    aget-byte v5, v14, v16

    .line 400
    .line 401
    and-int/lit16 v5, v5, 0xff

    .line 402
    .line 403
    shl-int/2addr v5, v7

    .line 404
    aget-byte v10, v14, v20

    .line 405
    .line 406
    :goto_7
    and-int/lit8 v10, v10, 0x3c

    .line 407
    .line 408
    shr-int/lit8 v10, v10, 0x2

    .line 409
    .line 410
    or-int/2addr v4, v5

    .line 411
    or-int/2addr v4, v10

    .line 412
    add-int/2addr v4, v8

    .line 413
    move v5, v8

    .line 414
    goto :goto_8

    .line 415
    :cond_e
    move/from16 v17, v5

    .line 416
    .line 417
    move/from16 v16, v10

    .line 418
    .line 419
    aget-byte v5, v14, v16

    .line 420
    .line 421
    and-int/2addr v4, v5

    .line 422
    shl-int/lit8 v4, v4, 0xc

    .line 423
    .line 424
    aget-byte v5, v14, v11

    .line 425
    .line 426
    and-int/lit16 v5, v5, 0xff

    .line 427
    .line 428
    shl-int/2addr v5, v7

    .line 429
    const/16 v10, 0x9

    .line 430
    .line 431
    aget-byte v10, v14, v10

    .line 432
    .line 433
    goto :goto_7

    .line 434
    :cond_f
    move/from16 v17, v5

    .line 435
    .line 436
    move/from16 v16, v10

    .line 437
    .line 438
    aget-byte v5, v14, v7

    .line 439
    .line 440
    and-int/2addr v4, v5

    .line 441
    shl-int/lit8 v4, v4, 0xc

    .line 442
    .line 443
    aget-byte v5, v14, v16

    .line 444
    .line 445
    and-int/lit16 v5, v5, 0xff

    .line 446
    .line 447
    shl-int/2addr v5, v7

    .line 448
    aget-byte v10, v14, v11

    .line 449
    .line 450
    and-int/lit16 v10, v10, 0xf0

    .line 451
    .line 452
    shr-int/2addr v10, v7

    .line 453
    or-int/2addr v4, v5

    .line 454
    or-int/2addr v4, v10

    .line 455
    goto :goto_6

    .line 456
    :goto_8
    if-eqz v5, :cond_10

    .line 457
    .line 458
    mul-int/lit8 v4, v4, 0x10

    .line 459
    .line 460
    div-int/lit8 v4, v4, 0xe

    .line 461
    .line 462
    :cond_10
    iput v4, v0, Lcom/google/android/gms/internal/ads/zzamp;->zzm:I

    .line 463
    .line 464
    if-eq v2, v15, :cond_13

    .line 465
    .line 466
    if-eq v2, v12, :cond_12

    .line 467
    .line 468
    if-eq v2, v9, :cond_11

    .line 469
    .line 470
    aget-byte v2, v14, v7

    .line 471
    .line 472
    and-int/2addr v2, v8

    .line 473
    shl-int/2addr v2, v11

    .line 474
    aget-byte v4, v14, v21

    .line 475
    .line 476
    :goto_9
    and-int/lit16 v4, v4, 0xfc

    .line 477
    .line 478
    :goto_a
    shr-int/lit8 v4, v4, 0x2

    .line 479
    .line 480
    or-int/2addr v2, v4

    .line 481
    goto :goto_c

    .line 482
    :cond_11
    aget-byte v2, v14, v21

    .line 483
    .line 484
    and-int/lit8 v2, v2, 0x7

    .line 485
    .line 486
    shl-int/2addr v2, v7

    .line 487
    aget-byte v4, v14, v11

    .line 488
    .line 489
    :goto_b
    and-int/lit8 v4, v4, 0x3c

    .line 490
    .line 491
    goto :goto_a

    .line 492
    :cond_12
    aget-byte v2, v14, v7

    .line 493
    .line 494
    and-int/lit8 v2, v2, 0x7

    .line 495
    .line 496
    shl-int/2addr v2, v7

    .line 497
    aget-byte v4, v14, v16

    .line 498
    .line 499
    goto :goto_b

    .line 500
    :cond_13
    aget-byte v2, v14, v21

    .line 501
    .line 502
    and-int/2addr v2, v8

    .line 503
    shl-int/2addr v2, v11

    .line 504
    aget-byte v4, v14, v7

    .line 505
    .line 506
    goto :goto_9

    .line 507
    :goto_c
    add-int/2addr v2, v8

    .line 508
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzamp;->zzl:Lcom/google/android/gms/internal/ads/zzz;

    .line 509
    .line 510
    iget v4, v4, Lcom/google/android/gms/internal/ads/zzz;->zzF:I

    .line 511
    .line 512
    mul-int/lit8 v2, v2, 0x20

    .line 513
    .line 514
    int-to-long v7, v2

    .line 515
    invoke-static {v7, v8, v4}, Lcom/google/android/gms/internal/ads/zzeu;->zzt(JI)J

    .line 516
    .line 517
    .line 518
    move-result-wide v4

    .line 519
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzgbf;->zzb(J)I

    .line 520
    .line 521
    .line 522
    move-result v2

    .line 523
    int-to-long v4, v2

    .line 524
    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzamp;->zzk:J

    .line 525
    .line 526
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 527
    .line 528
    .line 529
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzamp;->zzg:Lcom/google/android/gms/internal/ads/zzaet;

    .line 530
    .line 531
    invoke-interface {v2, v3, v13}, Lcom/google/android/gms/internal/ads/zzaet;->zzr(Lcom/google/android/gms/internal/ads/zzek;I)V

    .line 532
    .line 533
    .line 534
    iput v11, v0, Lcom/google/android/gms/internal/ads/zzamp;->zzh:I

    .line 535
    .line 536
    goto/16 :goto_0

    .line 537
    .line 538
    :cond_14
    move/from16 v17, v5

    .line 539
    .line 540
    const/16 v20, 0x8

    .line 541
    .line 542
    :cond_15
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zza()I

    .line 543
    .line 544
    .line 545
    move-result v2

    .line 546
    if-lez v2, :cond_0

    .line 547
    .line 548
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzamp;->zzj:I

    .line 549
    .line 550
    shl-int/lit8 v2, v2, 0x8

    .line 551
    .line 552
    iput v2, v0, Lcom/google/android/gms/internal/ads/zzamp;->zzj:I

    .line 553
    .line 554
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzm()I

    .line 555
    .line 556
    .line 557
    move-result v3

    .line 558
    or-int/2addr v2, v3

    .line 559
    iput v2, v0, Lcom/google/android/gms/internal/ads/zzamp;->zzj:I

    .line 560
    .line 561
    sget v3, Lcom/google/android/gms/internal/ads/zzadm;->zza:I

    .line 562
    .line 563
    const v3, 0x7ffe8001

    .line 564
    .line 565
    .line 566
    if-eq v2, v3, :cond_16

    .line 567
    .line 568
    const v3, -0x180fe80

    .line 569
    .line 570
    .line 571
    if-eq v2, v3, :cond_16

    .line 572
    .line 573
    const v3, 0x1fffe800

    .line 574
    .line 575
    .line 576
    if-eq v2, v3, :cond_16

    .line 577
    .line 578
    const v3, -0xe0ff18

    .line 579
    .line 580
    .line 581
    if-ne v2, v3, :cond_17

    .line 582
    .line 583
    :cond_16
    move v2, v8

    .line 584
    goto :goto_d

    .line 585
    :cond_17
    const v3, 0x64582025

    .line 586
    .line 587
    .line 588
    if-eq v2, v3, :cond_18

    .line 589
    .line 590
    const v3, 0x25205864

    .line 591
    .line 592
    .line 593
    if-ne v2, v3, :cond_19

    .line 594
    .line 595
    :cond_18
    move/from16 v2, v17

    .line 596
    .line 597
    goto :goto_d

    .line 598
    :cond_19
    const v3, 0x40411bf2

    .line 599
    .line 600
    .line 601
    if-eq v2, v3, :cond_1a

    .line 602
    .line 603
    const v3, -0xde4bec0

    .line 604
    .line 605
    .line 606
    if-ne v2, v3, :cond_1b

    .line 607
    .line 608
    :cond_1a
    move v2, v4

    .line 609
    goto :goto_d

    .line 610
    :cond_1b
    const v3, 0x71c442e8

    .line 611
    .line 612
    .line 613
    if-eq v2, v3, :cond_1c

    .line 614
    .line 615
    const v3, -0x17bd3b8f

    .line 616
    .line 617
    .line 618
    if-ne v2, v3, :cond_1d

    .line 619
    .line 620
    :cond_1c
    move v2, v7

    .line 621
    goto :goto_d

    .line 622
    :cond_1d
    move v2, v6

    .line 623
    :goto_d
    iput v2, v0, Lcom/google/android/gms/internal/ads/zzamp;->zzn:I

    .line 624
    .line 625
    if-eqz v2, :cond_15

    .line 626
    .line 627
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzamp;->zza:Lcom/google/android/gms/internal/ads/zzek;

    .line 628
    .line 629
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 630
    .line 631
    .line 632
    move-result-object v3

    .line 633
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzamp;->zzj:I

    .line 634
    .line 635
    shr-int/lit8 v9, v5, 0x18

    .line 636
    .line 637
    and-int/lit16 v9, v9, 0xff

    .line 638
    .line 639
    int-to-byte v9, v9

    .line 640
    aput-byte v9, v3, v6

    .line 641
    .line 642
    shr-int/lit8 v9, v5, 0x10

    .line 643
    .line 644
    and-int/lit16 v9, v9, 0xff

    .line 645
    .line 646
    int-to-byte v9, v9

    .line 647
    aput-byte v9, v3, v8

    .line 648
    .line 649
    shr-int/lit8 v9, v5, 0x8

    .line 650
    .line 651
    and-int/lit16 v9, v9, 0xff

    .line 652
    .line 653
    int-to-byte v9, v9

    .line 654
    aput-byte v9, v3, v17

    .line 655
    .line 656
    and-int/lit16 v5, v5, 0xff

    .line 657
    .line 658
    int-to-byte v5, v5

    .line 659
    aput-byte v5, v3, v4

    .line 660
    .line 661
    iput v7, v0, Lcom/google/android/gms/internal/ads/zzamp;->zzi:I

    .line 662
    .line 663
    iput v6, v0, Lcom/google/android/gms/internal/ads/zzamp;->zzj:I

    .line 664
    .line 665
    if-eq v2, v4, :cond_20

    .line 666
    .line 667
    if-ne v2, v7, :cond_1e

    .line 668
    .line 669
    goto :goto_e

    .line 670
    :cond_1e
    if-ne v2, v8, :cond_1f

    .line 671
    .line 672
    iput v8, v0, Lcom/google/android/gms/internal/ads/zzamp;->zzh:I

    .line 673
    .line 674
    goto/16 :goto_0

    .line 675
    .line 676
    :cond_1f
    move/from16 v2, v17

    .line 677
    .line 678
    iput v2, v0, Lcom/google/android/gms/internal/ads/zzamp;->zzh:I

    .line 679
    .line 680
    goto/16 :goto_0

    .line 681
    .line 682
    :cond_20
    :goto_e
    iput v7, v0, Lcom/google/android/gms/internal/ads/zzamp;->zzh:I

    .line 683
    .line 684
    goto/16 :goto_0

    .line 685
    .line 686
    :cond_21
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzadq;Lcom/google/android/gms/internal/ads/zzaof;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaof;->zzc()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaof;->zzb()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzamp;->zzf:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaof;->zza()I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    const/4 v0, 0x1

    .line 15
    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzadq;->zzw(II)Lcom/google/android/gms/internal/ads/zzaet;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamp;->zzg:Lcom/google/android/gms/internal/ads/zzaet;

    .line 20
    .line 21
    return-void
.end method

.method public final zzc(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final zzd(JI)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzamp;->zzq:J

    .line 2
    .line 3
    return-void
.end method

.method public final zze()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzamp;->zzh:I

    .line 3
    .line 4
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzamp;->zzi:I

    .line 5
    .line 6
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzamp;->zzj:I

    .line 7
    .line 8
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzamp;->zzq:J

    .line 14
    .line 15
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzamp;->zzb:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
