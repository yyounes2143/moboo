.class public final Lcom/google/android/gms/internal/ads/zzaiv;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzadn;


# static fields
.field private static final zza:[B

.field private static final zzb:Lcom/google/android/gms/internal/ads/zzz;


# instance fields
.field private zzA:J

.field private zzB:Lcom/google/android/gms/internal/ads/zzaiu;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzC:I

.field private zzD:I

.field private zzE:I

.field private zzF:Z

.field private zzG:Z

.field private zzH:Lcom/google/android/gms/internal/ads/zzadq;

.field private zzI:[Lcom/google/android/gms/internal/ads/zzaet;

.field private zzJ:[Lcom/google/android/gms/internal/ads/zzaet;

.field private zzK:Z

.field private final zzc:Lcom/google/android/gms/internal/ads/zzakj;

.field private final zzd:I

.field private final zze:Ljava/util/List;

.field private final zzf:Landroid/util/SparseArray;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzek;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzek;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzek;

.field private final zzj:[B

.field private final zzk:Lcom/google/android/gms/internal/ads/zzek;

.field private final zzl:Lcom/google/android/gms/internal/ads/zzagk;

.field private final zzm:Lcom/google/android/gms/internal/ads/zzek;

.field private final zzn:Ljava/util/ArrayDeque;

.field private final zzo:Ljava/util/ArrayDeque;

.field private final zzp:Lcom/google/android/gms/internal/ads/zzfw;

.field private zzq:Lcom/google/android/gms/internal/ads/zzfyc;

.field private zzr:I

.field private zzs:I

.field private zzt:J

.field private zzu:I

.field private zzv:Lcom/google/android/gms/internal/ads/zzek;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzw:J

.field private zzx:I

.field private zzy:J

.field private zzz:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/google/android/gms/internal/ads/zzaiv;->zza:[B

    .line 9
    .line 10
    new-instance v0, Lcom/google/android/gms/internal/ads/zzx;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzx;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v1, "application/x-emsg"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzx;->zzad(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzx;->zzaj()Lcom/google/android/gms/internal/ads/zzz;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sput-object v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzb:Lcom/google/android/gms/internal/ads/zzz;

    .line 25
    .line 26
    return-void

    .line 27
    :array_0
    .array-data 1
        -0x5et
        0x39t
        0x4ft
        0x52t
        0x5at
        -0x65t
        0x4ft
        0x14t
        -0x5et
        0x44t
        0x6ct
        0x42t
        0x7ct
        0x64t
        -0x73t
        -0xct
    .end array-data
.end method

.method public constructor <init>()V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v1, Lcom/google/android/gms/internal/ads/zzakj;->zza:Lcom/google/android/gms/internal/ads/zzakj;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfyc;->zzn()Lcom/google/android/gms/internal/ads/zzfyc;

    move-result-object v5

    const/4 v6, 0x0

    const/16 v2, 0x20

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    .line 2
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzaiv;-><init>(Lcom/google/android/gms/internal/ads/zzakj;ILcom/google/android/gms/internal/ads/zzer;Lcom/google/android/gms/internal/ads/zzajh;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzaet;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzakj;ILcom/google/android/gms/internal/ads/zzer;Lcom/google/android/gms/internal/ads/zzajh;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzaet;)V
    .locals 0
    .param p3    # Lcom/google/android/gms/internal/ads/zzer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/gms/internal/ads/zzajh;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/google/android/gms/internal/ads/zzaet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzc:Lcom/google/android/gms/internal/ads/zzakj;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzd:I

    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zze:Ljava/util/List;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzagk;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzagk;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzl:Lcom/google/android/gms/internal/ads/zzagk;

    .line 5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzek;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzek;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzm:Lcom/google/android/gms/internal/ads/zzek;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzek;

    .line 6
    sget-object p3, Lcom/google/android/gms/internal/ads/zzfs;->zza:[B

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzek;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzg:Lcom/google/android/gms/internal/ads/zzek;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzek;

    const/4 p3, 0x6

    .line 7
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzek;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzh:Lcom/google/android/gms/internal/ads/zzek;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzek;

    .line 8
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzek;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzi:Lcom/google/android/gms/internal/ads/zzek;

    new-array p1, p2, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzj:[B

    new-instance p2, Lcom/google/android/gms/internal/ads/zzek;

    .line 9
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzek;-><init>([B)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzk:Lcom/google/android/gms/internal/ads/zzek;

    new-instance p1, Ljava/util/ArrayDeque;

    .line 10
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzn:Ljava/util/ArrayDeque;

    new-instance p1, Ljava/util/ArrayDeque;

    .line 11
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzo:Ljava/util/ArrayDeque;

    new-instance p1, Landroid/util/SparseArray;

    .line 12
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzf:Landroid/util/SparseArray;

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfyc;->zzn()Lcom/google/android/gms/internal/ads/zzfyc;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzq:Lcom/google/android/gms/internal/ads/zzfyc;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzz:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzy:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzA:J

    sget-object p1, Lcom/google/android/gms/internal/ads/zzadq;->zza:Lcom/google/android/gms/internal/ads/zzadq;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzH:Lcom/google/android/gms/internal/ads/zzadq;

    const/4 p1, 0x0

    new-array p2, p1, [Lcom/google/android/gms/internal/ads/zzaet;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzI:[Lcom/google/android/gms/internal/ads/zzaet;

    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzaet;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzJ:[Lcom/google/android/gms/internal/ads/zzaet;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfw;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzais;

    .line 14
    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzais;-><init>(Lcom/google/android/gms/internal/ads/zzaiv;)V

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzfw;-><init>(Lcom/google/android/gms/internal/ads/zzfv;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzp:Lcom/google/android/gms/internal/ads/zzfw;

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzaiv;JLcom/google/android/gms/internal/ads/zzek;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzJ:[Lcom/google/android/gms/internal/ads/zzaet;

    .line 2
    .line 3
    invoke-static {p1, p2, p3, p0}, Lcom/google/android/gms/internal/ads/zzada;->zza(JLcom/google/android/gms/internal/ads/zzek;[Lcom/google/android/gms/internal/ads/zzaet;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private static zzg(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaz;
        }
    .end annotation

    .line 1
    if-ltz p0, :cond_0

    .line 2
    .line 3
    return p0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v1, "Unexpected negative value: "

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    throw p0
.end method

.method private static zzh(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzs;
    .locals 19
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v3, v1

    .line 7
    const/4 v4, 0x0

    .line 8
    :goto_0
    if-ge v3, v0, :cond_b

    .line 9
    .line 10
    move-object/from16 v5, p0

    .line 11
    .line 12
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v6

    .line 16
    check-cast v6, Lcom/google/android/gms/internal/ads/zzfa;

    .line 17
    .line 18
    iget v7, v6, Lcom/google/android/gms/internal/ads/zzfc;->zzd:I

    .line 19
    .line 20
    const v8, 0x70737368    # 3.013775E29f

    .line 21
    .line 22
    .line 23
    if-ne v7, v8, :cond_a

    .line 24
    .line 25
    if-nez v4, :cond_0

    .line 26
    .line 27
    new-instance v4, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzfa;->zza:Lcom/google/android/gms/internal/ads/zzek;

    .line 33
    .line 34
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    new-instance v7, Lcom/google/android/gms/internal/ads/zzek;

    .line 39
    .line 40
    invoke-direct {v7, v6}, Lcom/google/android/gms/internal/ads/zzek;-><init>([B)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzek;->zzd()I

    .line 44
    .line 45
    .line 46
    move-result v9

    .line 47
    const/16 v10, 0x20

    .line 48
    .line 49
    if-ge v9, v10, :cond_1

    .line 50
    .line 51
    :goto_1
    move/from16 v16, v3

    .line 52
    .line 53
    :goto_2
    const/4 v2, 0x0

    .line 54
    goto/16 :goto_6

    .line 55
    .line 56
    :cond_1
    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzek;->zza()I

    .line 60
    .line 61
    .line 62
    move-result v9

    .line 63
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    .line 64
    .line 65
    .line 66
    move-result v10

    .line 67
    const-string v11, "PsshAtomUtil"

    .line 68
    .line 69
    if-eq v10, v9, :cond_2

    .line 70
    .line 71
    new-instance v7, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    const-string v8, "Advertised atom size ("

    .line 77
    .line 78
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v8, ") does not match buffer size: "

    .line 85
    .line 86
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    invoke-static {v11, v7}, Lcom/google/android/gms/internal/ads/zzdx;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_2
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    .line 101
    .line 102
    .line 103
    move-result v9

    .line 104
    if-eq v9, v8, :cond_3

    .line 105
    .line 106
    new-instance v7, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .line 110
    .line 111
    const-string v8, "Atom type is not pssh: "

    .line 112
    .line 113
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v7

    .line 123
    invoke-static {v11, v7}, Lcom/google/android/gms/internal/ads/zzdx;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_3
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    .line 128
    .line 129
    .line 130
    move-result v8

    .line 131
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzaip;->zza(I)I

    .line 132
    .line 133
    .line 134
    move-result v8

    .line 135
    const/4 v9, 0x1

    .line 136
    if-le v8, v9, :cond_4

    .line 137
    .line 138
    new-instance v7, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .line 142
    .line 143
    const-string v9, "Unsupported pssh version: "

    .line 144
    .line 145
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v7

    .line 155
    invoke-static {v11, v7}, Lcom/google/android/gms/internal/ads/zzdx;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_4
    new-instance v10, Ljava/util/UUID;

    .line 160
    .line 161
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzek;->zzt()J

    .line 162
    .line 163
    .line 164
    move-result-wide v12

    .line 165
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzek;->zzt()J

    .line 166
    .line 167
    .line 168
    move-result-wide v14

    .line 169
    invoke-direct {v10, v12, v13, v14, v15}, Ljava/util/UUID;-><init>(JJ)V

    .line 170
    .line 171
    .line 172
    if-ne v8, v9, :cond_6

    .line 173
    .line 174
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzek;->zzp()I

    .line 175
    .line 176
    .line 177
    move-result v9

    .line 178
    new-array v12, v9, [Ljava/util/UUID;

    .line 179
    .line 180
    move v13, v1

    .line 181
    :goto_3
    if-ge v13, v9, :cond_5

    .line 182
    .line 183
    new-instance v14, Ljava/util/UUID;

    .line 184
    .line 185
    move/from16 v16, v3

    .line 186
    .line 187
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzek;->zzt()J

    .line 188
    .line 189
    .line 190
    move-result-wide v2

    .line 191
    move-object/from16 v17, v12

    .line 192
    .line 193
    move/from16 v18, v13

    .line 194
    .line 195
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzek;->zzt()J

    .line 196
    .line 197
    .line 198
    move-result-wide v12

    .line 199
    invoke-direct {v14, v2, v3, v12, v13}, Ljava/util/UUID;-><init>(JJ)V

    .line 200
    .line 201
    .line 202
    aput-object v14, v17, v18

    .line 203
    .line 204
    add-int/lit8 v13, v18, 0x1

    .line 205
    .line 206
    move/from16 v3, v16

    .line 207
    .line 208
    move-object/from16 v12, v17

    .line 209
    .line 210
    goto :goto_3

    .line 211
    :cond_5
    move-object/from16 v17, v12

    .line 212
    .line 213
    :goto_4
    move/from16 v16, v3

    .line 214
    .line 215
    goto :goto_5

    .line 216
    :cond_6
    const/4 v12, 0x0

    .line 217
    goto :goto_4

    .line 218
    :goto_5
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzek;->zzp()I

    .line 219
    .line 220
    .line 221
    move-result v2

    .line 222
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzek;->zza()I

    .line 223
    .line 224
    .line 225
    move-result v3

    .line 226
    if-eq v2, v3, :cond_7

    .line 227
    .line 228
    new-instance v7, Ljava/lang/StringBuilder;

    .line 229
    .line 230
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 231
    .line 232
    .line 233
    const-string v8, "Atom data size ("

    .line 234
    .line 235
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    const-string v2, ") does not match the bytes left: "

    .line 242
    .line 243
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v2

    .line 253
    invoke-static {v11, v2}, Lcom/google/android/gms/internal/ads/zzdx;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    goto/16 :goto_2

    .line 257
    .line 258
    :cond_7
    new-array v3, v2, [B

    .line 259
    .line 260
    invoke-virtual {v7, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzek;->zzH([BII)V

    .line 261
    .line 262
    .line 263
    new-instance v2, Lcom/google/android/gms/internal/ads/zzajd;

    .line 264
    .line 265
    invoke-direct {v2, v10, v8, v3, v12}, Lcom/google/android/gms/internal/ads/zzajd;-><init>(Ljava/util/UUID;I[B[Ljava/util/UUID;)V

    .line 266
    .line 267
    .line 268
    :goto_6
    if-nez v2, :cond_8

    .line 269
    .line 270
    const/4 v2, 0x0

    .line 271
    goto :goto_7

    .line 272
    :cond_8
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzajd;->zza:Ljava/util/UUID;

    .line 273
    .line 274
    :goto_7
    if-nez v2, :cond_9

    .line 275
    .line 276
    const-string v2, "FragmentedMp4Extractor"

    .line 277
    .line 278
    const-string v3, "Skipped pssh atom (failed to extract uuid)"

    .line 279
    .line 280
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzdx;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    goto :goto_8

    .line 284
    :cond_9
    new-instance v3, Lcom/google/android/gms/internal/ads/zzr;

    .line 285
    .line 286
    const-string v7, "video/mp4"

    .line 287
    .line 288
    const/4 v15, 0x0

    .line 289
    invoke-direct {v3, v2, v15, v7, v6}, Lcom/google/android/gms/internal/ads/zzr;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    goto :goto_9

    .line 296
    :cond_a
    move/from16 v16, v3

    .line 297
    .line 298
    :goto_8
    const/4 v15, 0x0

    .line 299
    :goto_9
    add-int/lit8 v3, v16, 0x1

    .line 300
    .line 301
    goto/16 :goto_0

    .line 302
    .line 303
    :cond_b
    const/4 v15, 0x0

    .line 304
    if-nez v4, :cond_c

    .line 305
    .line 306
    return-object v15

    .line 307
    :cond_c
    new-instance v0, Lcom/google/android/gms/internal/ads/zzs;

    .line 308
    .line 309
    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/ads/zzs;-><init>(Ljava/util/List;)V

    .line 310
    .line 311
    .line 312
    return-object v0
.end method

.method private final zzj()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzr:I

    .line 3
    .line 4
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzu:I

    .line 5
    .line 6
    return-void
.end method

.method private static zzk(Lcom/google/android/gms/internal/ads/zzek;ILcom/google/android/gms/internal/ads/zzajj;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaz;
        }
    .end annotation

    .line 1
    add-int/lit8 p1, p1, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    sget v0, Lcom/google/android/gms/internal/ads/zzaip;->zza:I

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    and-int/lit8 v1, p1, 0x1

    .line 14
    .line 15
    if-nez v1, :cond_3

    .line 16
    .line 17
    and-int/lit8 p1, p1, 0x2

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v0, v1

    .line 24
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zzp()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    iget-object p0, p2, Lcom/google/android/gms/internal/ads/zzajj;->zzl:[Z

    .line 31
    .line 32
    iget p1, p2, Lcom/google/android/gms/internal/ads/zzajj;->zze:I

    .line 33
    .line 34
    invoke-static {p0, v1, p1, v1}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    iget v2, p2, Lcom/google/android/gms/internal/ads/zzajj;->zze:I

    .line 39
    .line 40
    if-ne p1, v2, :cond_2

    .line 41
    .line 42
    iget-object v2, p2, Lcom/google/android/gms/internal/ads/zzajj;->zzl:[Z

    .line 43
    .line 44
    invoke-static {v2, v1, p1, v0}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zza()I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzajj;->zza(I)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzajj;->zzn:Lcom/google/android/gms/internal/ads/zzek;

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzek;->zzd()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzek;->zzH([BII)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 68
    .line 69
    .line 70
    iput-boolean v1, p2, Lcom/google/android/gms/internal/ads/zzajj;->zzo:Z

    .line 71
    .line 72
    return-void

    .line 73
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    const-string p2, "Senc sample count "

    .line 79
    .line 80
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string p1, " is different from fragment sample count"

    .line 87
    .line 88
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    const/4 p1, 0x0

    .line 99
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    throw p0

    .line 104
    :cond_3
    const-string p0, "Overriding TrackEncryptionBox parameters is unsupported."

    .line 105
    .line 106
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaz;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    throw p0
.end method

.method private final zzl(J)V
    .locals 58
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaz;
        }
    .end annotation

    move-object/from16 v0, p0

    :cond_0
    :goto_0
    const/16 v2, 0x8

    .line 1
    :cond_1
    :goto_1
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzn:Ljava/util/ArrayDeque;

    invoke-virtual {v6}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_52

    invoke-virtual {v6}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/ads/zzez;

    iget-wide v7, v7, Lcom/google/android/gms/internal/ads/zzez;->zza:J

    cmp-long v7, v7, p1

    if-nez v7, :cond_52

    .line 2
    invoke-virtual {v6}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/google/android/gms/internal/ads/zzez;

    .line 3
    iget v7, v8, Lcom/google/android/gms/internal/ads/zzfc;->zzd:I

    const v9, 0x6d6f6f76

    const/16 v12, 0xc

    if-ne v7, v9, :cond_a

    .line 4
    iget-object v6, v8, Lcom/google/android/gms/internal/ads/zzez;->zzb:Ljava/util/List;

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzaiv;->zzh(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzs;

    move-result-object v6

    const v7, 0x6d766578

    .line 5
    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/ads/zzez;->zza(I)Lcom/google/android/gms/internal/ads/zzez;

    move-result-object v7

    .line 6
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    new-instance v9, Landroid/util/SparseArray;

    .line 8
    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzez;->zzb:Ljava/util/List;

    .line 9
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v14

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v15, 0x0

    :goto_2
    if-ge v15, v14, :cond_5

    .line 10
    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v13, v16

    check-cast v13, Lcom/google/android/gms/internal/ads/zzfa;

    const/16 v16, 0x10

    .line 11
    iget v3, v13, Lcom/google/android/gms/internal/ads/zzfc;->zzd:I

    const/16 v18, 0x4

    const v1, 0x74726578

    if-ne v3, v1, :cond_2

    .line 12
    iget-object v1, v13, Lcom/google/android/gms/internal/ads/zzfa;->zza:Lcom/google/android/gms/internal/ads/zzek;

    .line 13
    invoke-virtual {v1, v12}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    move-result v3

    .line 15
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    const/16 v19, 0x2

    .line 16
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    move-result v4

    .line 17
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    move-result v12

    .line 18
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    move-result v1

    .line 19
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v21, 0x1

    new-instance v5, Lcom/google/android/gms/internal/ads/zzaiq;

    invoke-direct {v5, v13, v4, v12, v1}, Lcom/google/android/gms/internal/ads/zzaiq;-><init>(IIII)V

    .line 20
    invoke-static {v3, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 21
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzaiq;

    invoke-virtual {v9, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_4

    :cond_2
    const/16 v19, 0x2

    const/16 v21, 0x1

    const v1, 0x6d656864

    if-ne v3, v1, :cond_4

    .line 22
    iget-object v1, v13, Lcom/google/android/gms/internal/ads/zzfa;->zza:Lcom/google/android/gms/internal/ads/zzek;

    .line 23
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 24
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    move-result v3

    .line 25
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzaip;->zza(I)I

    move-result v3

    if-nez v3, :cond_3

    .line 26
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzu()J

    move-result-wide v3

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzw()J

    move-result-wide v3

    :goto_3
    move-wide v10, v3

    :cond_4
    :goto_4
    add-int/lit8 v15, v15, 0x1

    const/16 v12, 0xc

    goto :goto_2

    :cond_5
    const/16 v16, 0x10

    const/16 v18, 0x4

    const/16 v19, 0x2

    const/16 v21, 0x1

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaeb;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzaeb;-><init>()V

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzd:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_6

    move/from16 v13, v21

    goto :goto_5

    :cond_6
    const/4 v13, 0x0

    :goto_5
    new-instance v15, Lcom/google/android/gms/internal/ads/zzair;

    invoke-direct {v15, v0}, Lcom/google/android/gms/internal/ads/zzair;-><init>(Lcom/google/android/gms/internal/ads/zzaiv;)V

    const/4 v14, 0x0

    move-object v12, v6

    move-object v3, v9

    move-object v9, v1

    const/4 v1, 0x0

    .line 27
    invoke-static/range {v8 .. v15}, Lcom/google/android/gms/internal/ads/zzaip;->zzf(Lcom/google/android/gms/internal/ads/zzez;Lcom/google/android/gms/internal/ads/zzaeb;JLcom/google/android/gms/internal/ads/zzs;ZZLcom/google/android/gms/internal/ads/zzfur;)Ljava/util/List;

    move-result-object v4

    .line 28
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzf:Landroid/util/SparseArray;

    .line 29
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-nez v7, :cond_8

    .line 30
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzaiy;->zza(Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    move v13, v1

    :goto_6
    if-ge v13, v5, :cond_7

    .line 31
    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzajk;

    .line 32
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzajk;->zza:Lcom/google/android/gms/internal/ads/zzajh;

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzH:Lcom/google/android/gms/internal/ads/zzadq;

    iget v10, v8, Lcom/google/android/gms/internal/ads/zzajh;->zzb:I

    .line 33
    invoke-interface {v9, v13, v10}, Lcom/google/android/gms/internal/ads/zzadq;->zzw(II)Lcom/google/android/gms/internal/ads/zzaet;

    move-result-object v9

    iget-wide v10, v8, Lcom/google/android/gms/internal/ads/zzajh;->zze:J

    .line 34
    invoke-interface {v9, v10, v11}, Lcom/google/android/gms/internal/ads/zzaet;->zzl(J)V

    iget v8, v8, Lcom/google/android/gms/internal/ads/zzajh;->zza:I

    new-instance v12, Lcom/google/android/gms/internal/ads/zzaiu;

    .line 35
    invoke-static {v3, v8}, Lcom/google/android/gms/internal/ads/zzaiv;->zzm(Landroid/util/SparseArray;I)Lcom/google/android/gms/internal/ads/zzaiq;

    move-result-object v14

    invoke-direct {v12, v9, v1, v14, v7}, Lcom/google/android/gms/internal/ads/zzaiu;-><init>(Lcom/google/android/gms/internal/ads/zzaet;Lcom/google/android/gms/internal/ads/zzajk;Lcom/google/android/gms/internal/ads/zzaiq;Ljava/lang/String;)V

    .line 36
    invoke-virtual {v6, v8, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzz:J

    .line 37
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    iput-wide v8, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzz:J

    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    :cond_7
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzH:Lcom/google/android/gms/internal/ads/zzadq;

    .line 38
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzadq;->zzG()V

    goto/16 :goto_1

    .line 39
    :cond_8
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ne v7, v5, :cond_9

    move/from16 v13, v21

    goto :goto_7

    :cond_9
    move v13, v1

    :goto_7
    invoke-static {v13}, Lcom/google/android/gms/internal/ads/zzdc;->zzf(Z)V

    move v13, v1

    :goto_8
    if-ge v13, v5, :cond_1

    .line 40
    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzajk;

    .line 41
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzajk;->zza:Lcom/google/android/gms/internal/ads/zzajh;

    iget v7, v7, Lcom/google/android/gms/internal/ads/zzajh;->zza:I

    .line 42
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/ads/zzaiu;

    .line 43
    invoke-static {v3, v7}, Lcom/google/android/gms/internal/ads/zzaiv;->zzm(Landroid/util/SparseArray;I)Lcom/google/android/gms/internal/ads/zzaiq;

    move-result-object v7

    invoke-virtual {v8, v1, v7}, Lcom/google/android/gms/internal/ads/zzaiu;->zzh(Lcom/google/android/gms/internal/ads/zzajk;Lcom/google/android/gms/internal/ads/zzaiq;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    :cond_a
    const/4 v1, 0x0

    const/16 v16, 0x10

    const/16 v18, 0x4

    const/16 v19, 0x2

    const/16 v21, 0x1

    const v3, 0x6d6f6f66

    if-ne v7, v3, :cond_51

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzf:Landroid/util/SparseArray;

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzd:I

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzj:[B

    .line 44
    iget-object v6, v8, Lcom/google/android/gms/internal/ads/zzez;->zzc:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    move v13, v1

    :goto_9
    if-ge v13, v7, :cond_4b

    .line 45
    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/ads/zzez;

    .line 46
    iget v12, v9, Lcom/google/android/gms/internal/ads/zzfc;->zzd:I

    const v14, 0x74726166

    if-ne v12, v14, :cond_4a

    const v12, 0x74666864

    .line 47
    invoke-virtual {v9, v12}, Lcom/google/android/gms/internal/ads/zzez;->zzb(I)Lcom/google/android/gms/internal/ads/zzfa;

    move-result-object v12

    .line 48
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    iget-object v12, v12, Lcom/google/android/gms/internal/ads/zzfa;->zza:Lcom/google/android/gms/internal/ads/zzek;

    .line 50
    invoke-virtual {v12, v2}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 51
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    move-result v14

    .line 52
    sget v15, Lcom/google/android/gms/internal/ads/zzaip;->zza:I

    .line 53
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    move-result v15

    .line 54
    invoke-virtual {v3, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/gms/internal/ads/zzaiu;

    const-wide v22, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v15, :cond_b

    const/4 v15, 0x0

    goto :goto_e

    :cond_b
    and-int/lit8 v11, v14, 0x1

    if-eqz v11, :cond_c

    .line 55
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzek;->zzw()J

    move-result-wide v10

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzaiu;->zzb:Lcom/google/android/gms/internal/ads/zzajj;

    iput-wide v10, v1, Lcom/google/android/gms/internal/ads/zzajj;->zzb:J

    iput-wide v10, v1, Lcom/google/android/gms/internal/ads/zzajj;->zzc:J

    :cond_c
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzaiu;->zze:Lcom/google/android/gms/internal/ads/zzaiq;

    and-int/lit8 v10, v14, 0x2

    if-eqz v10, :cond_d

    .line 56
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    goto :goto_a

    .line 57
    :cond_d
    iget v10, v1, Lcom/google/android/gms/internal/ads/zzaiq;->zza:I

    :goto_a
    and-int/lit8 v11, v14, 0x8

    if-eqz v11, :cond_e

    .line 58
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    move-result v11

    goto :goto_b

    .line 59
    :cond_e
    iget v11, v1, Lcom/google/android/gms/internal/ads/zzaiq;->zzb:I

    :goto_b
    and-int/lit8 v25, v14, 0x10

    if-eqz v25, :cond_f

    .line 60
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    move-result v25

    move/from16 v2, v25

    goto :goto_c

    .line 61
    :cond_f
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzaiq;->zzc:I

    :goto_c
    and-int/lit8 v14, v14, 0x20

    if-eqz v14, :cond_10

    .line 62
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    move-result v1

    goto :goto_d

    .line 63
    :cond_10
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzaiq;->zzd:I

    .line 64
    :goto_d
    iget-object v12, v15, Lcom/google/android/gms/internal/ads/zzaiu;->zzb:Lcom/google/android/gms/internal/ads/zzajj;

    new-instance v14, Lcom/google/android/gms/internal/ads/zzaiq;

    invoke-direct {v14, v10, v11, v2, v1}, Lcom/google/android/gms/internal/ads/zzaiq;-><init>(IIII)V

    iput-object v14, v12, Lcom/google/android/gms/internal/ads/zzajj;->zza:Lcom/google/android/gms/internal/ads/zzaiq;

    :goto_e
    if-nez v15, :cond_11

    move/from16 v26, v4

    move-object/from16 v28, v6

    move/from16 v27, v7

    move/from16 v11, v16

    move/from16 v14, v18

    move/from16 v10, v19

    const/16 v12, 0xc

    const/4 v15, 0x0

    goto/16 :goto_33

    .line 65
    :cond_11
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzaiu;->zzb:Lcom/google/android/gms/internal/ads/zzajj;

    iget-wide v10, v1, Lcom/google/android/gms/internal/ads/zzajj;->zzp:J

    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzajj;->zzq:Z

    .line 66
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzaiu;->zzi()V

    move/from16 v12, v21

    .line 67
    invoke-static {v15, v12}, Lcom/google/android/gms/internal/ads/zzaiu;->zzg(Lcom/google/android/gms/internal/ads/zzaiu;Z)V

    const v14, 0x74666474

    .line 68
    invoke-virtual {v9, v14}, Lcom/google/android/gms/internal/ads/zzez;->zzb(I)Lcom/google/android/gms/internal/ads/zzfa;

    move-result-object v14

    if-eqz v14, :cond_13

    and-int/lit8 v21, v4, 0x2

    if-nez v21, :cond_13

    iget-object v2, v14, Lcom/google/android/gms/internal/ads/zzfa;->zza:Lcom/google/android/gms/internal/ads/zzek;

    const/16 v10, 0x8

    .line 69
    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 70
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    move-result v10

    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zzaip;->zza(I)I

    move-result v10

    if-ne v10, v12, :cond_12

    .line 71
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzw()J

    move-result-wide v10

    goto :goto_f

    :cond_12
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzu()J

    move-result-wide v10

    :goto_f
    iput-wide v10, v1, Lcom/google/android/gms/internal/ads/zzajj;->zzp:J

    iput-boolean v12, v1, Lcom/google/android/gms/internal/ads/zzajj;->zzq:Z

    goto :goto_10

    :cond_13
    iput-wide v10, v1, Lcom/google/android/gms/internal/ads/zzajj;->zzp:J

    iput-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzajj;->zzq:Z

    .line 72
    :goto_10
    iget-object v2, v9, Lcom/google/android/gms/internal/ads/zzez;->zzb:Ljava/util/List;

    .line 73
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    move/from16 v26, v4

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    :goto_11
    const v4, 0x7472756e

    if-ge v11, v10, :cond_15

    .line 74
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v28, v6

    move-object/from16 v6, v27

    check-cast v6, Lcom/google/android/gms/internal/ads/zzfa;

    move/from16 v27, v7

    .line 75
    iget v7, v6, Lcom/google/android/gms/internal/ads/zzfc;->zzd:I

    if-ne v7, v4, :cond_14

    .line 76
    iget-object v4, v6, Lcom/google/android/gms/internal/ads/zzfa;->zza:Lcom/google/android/gms/internal/ads/zzek;

    const/16 v6, 0xc

    .line 77
    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 78
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzek;->zzp()I

    move-result v4

    if-lez v4, :cond_14

    add-int/2addr v14, v4

    const/16 v21, 0x1

    add-int/lit8 v12, v12, 0x1

    goto :goto_12

    :cond_14
    const/16 v21, 0x1

    :goto_12
    add-int/lit8 v11, v11, 0x1

    move/from16 v7, v27

    move-object/from16 v6, v28

    goto :goto_11

    :cond_15
    move-object/from16 v28, v6

    move/from16 v27, v7

    const/4 v6, 0x0

    iput v6, v15, Lcom/google/android/gms/internal/ads/zzaiu;->zzh:I

    iput v6, v15, Lcom/google/android/gms/internal/ads/zzaiu;->zzg:I

    iput v6, v15, Lcom/google/android/gms/internal/ads/zzaiu;->zzf:I

    iput v12, v1, Lcom/google/android/gms/internal/ads/zzajj;->zzd:I

    iput v14, v1, Lcom/google/android/gms/internal/ads/zzajj;->zze:I

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzajj;->zzg:[I

    .line 79
    array-length v6, v6

    if-ge v6, v12, :cond_16

    new-array v6, v12, [J

    iput-object v6, v1, Lcom/google/android/gms/internal/ads/zzajj;->zzf:[J

    new-array v6, v12, [I

    iput-object v6, v1, Lcom/google/android/gms/internal/ads/zzajj;->zzg:[I

    :cond_16
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzajj;->zzh:[I

    .line 80
    array-length v6, v6

    if-ge v6, v14, :cond_17

    mul-int/lit8 v14, v14, 0x7d

    div-int/lit8 v14, v14, 0x64

    .line 81
    new-array v6, v14, [I

    iput-object v6, v1, Lcom/google/android/gms/internal/ads/zzajj;->zzh:[I

    .line 82
    new-array v6, v14, [J

    iput-object v6, v1, Lcom/google/android/gms/internal/ads/zzajj;->zzi:[J

    .line 83
    new-array v6, v14, [Z

    iput-object v6, v1, Lcom/google/android/gms/internal/ads/zzajj;->zzj:[Z

    .line 84
    new-array v6, v14, [Z

    iput-object v6, v1, Lcom/google/android/gms/internal/ads/zzajj;->zzl:[Z

    :cond_17
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    :goto_13
    const-wide/16 v29, 0x0

    if-ge v6, v10, :cond_2c

    .line 85
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/ads/zzfa;

    .line 86
    iget v14, v12, Lcom/google/android/gms/internal/ads/zzfc;->zzd:I

    if-ne v14, v4, :cond_2b

    const/16 v21, 0x1

    add-int/lit8 v14, v7, 0x1

    .line 87
    iget-object v12, v12, Lcom/google/android/gms/internal/ads/zzfa;->zza:Lcom/google/android/gms/internal/ads/zzek;

    const/16 v4, 0x8

    .line 88
    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 89
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    move-result v4

    move/from16 v32, v6

    iget-object v6, v15, Lcom/google/android/gms/internal/ads/zzaiu;->zzd:Lcom/google/android/gms/internal/ads/zzajk;

    .line 90
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzajk;->zza:Lcom/google/android/gms/internal/ads/zzajh;

    move/from16 v33, v7

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzajj;->zza:Lcom/google/android/gms/internal/ads/zzaiq;

    .line 91
    sget-object v34, Lcom/google/android/gms/internal/ads/zzeu;->zza:Ljava/lang/String;

    move/from16 v34, v10

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzajj;->zzg:[I

    .line 92
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzek;->zzp()I

    move-result v35

    aput v35, v10, v33

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzajj;->zzf:[J

    move-object/from16 v36, v10

    move/from16 v35, v11

    iget-wide v10, v1, Lcom/google/android/gms/internal/ads/zzajj;->zzb:J

    .line 93
    aput-wide v10, v36, v33

    const/16 v21, 0x1

    and-int/lit8 v37, v4, 0x1

    if-eqz v37, :cond_18

    move-wide/from16 v37, v10

    .line 94
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    move-result v10

    int-to-long v10, v10

    add-long v10, v37, v10

    aput-wide v10, v36, v33

    :cond_18
    and-int/lit8 v10, v4, 0x4

    if-eqz v10, :cond_19

    const/4 v10, 0x1

    goto :goto_14

    :cond_19
    const/4 v10, 0x0

    .line 95
    :goto_14
    iget v11, v7, Lcom/google/android/gms/internal/ads/zzaiq;->zzd:I

    if-eqz v10, :cond_1a

    .line 96
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    move-result v36

    goto :goto_15

    :cond_1a
    move/from16 v36, v11

    :goto_15
    move/from16 v37, v10

    and-int/lit16 v10, v4, 0x100

    move/from16 v38, v10

    and-int/lit16 v10, v4, 0x200

    move/from16 v39, v10

    and-int/lit16 v10, v4, 0x400

    and-int/lit16 v4, v4, 0x800

    move/from16 v40, v4

    iget-object v4, v6, Lcom/google/android/gms/internal/ads/zzajh;->zzi:[J

    if-eqz v4, :cond_1f

    move/from16 v41, v10

    array-length v10, v4

    move-object/from16 v42, v4

    const/4 v4, 0x1

    if-ne v10, v4, :cond_1b

    iget-object v4, v6, Lcom/google/android/gms/internal/ads/zzajh;->zzj:[J

    if-nez v4, :cond_1c

    :cond_1b
    :goto_16
    move/from16 v42, v11

    goto :goto_18

    :cond_1c
    const/16 v24, 0x0

    .line 97
    aget-wide v43, v42, v24

    cmp-long v10, v43, v29

    if-nez v10, :cond_1d

    move/from16 v42, v11

    goto :goto_17

    :cond_1d
    move/from16 v42, v11

    .line 98
    iget-wide v10, v6, Lcom/google/android/gms/internal/ads/zzajh;->zzd:J

    sget-object v49, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v45, 0xf4240

    move-wide/from16 v47, v10

    .line 99
    invoke-static/range {v43 .. v49}, Lcom/google/android/gms/internal/ads/zzeu;->zzu(JJJLjava/math/RoundingMode;)J

    move-result-wide v10

    .line 100
    aget-wide v45, v4, v24

    const-wide/32 v47, 0xf4240

    move-wide/from16 v43, v10

    iget-wide v10, v6, Lcom/google/android/gms/internal/ads/zzajh;->zzc:J

    move-object/from16 v51, v49

    move-wide/from16 v49, v10

    .line 101
    invoke-static/range {v45 .. v51}, Lcom/google/android/gms/internal/ads/zzeu;->zzu(JJJLjava/math/RoundingMode;)J

    move-result-wide v10

    add-long v10, v43, v10

    move-wide/from16 v43, v10

    iget-wide v10, v6, Lcom/google/android/gms/internal/ads/zzajh;->zze:J

    cmp-long v10, v43, v10

    if-gez v10, :cond_1e

    goto :goto_18

    .line 102
    :cond_1e
    :goto_17
    aget-wide v29, v4, v24

    goto :goto_18

    :cond_1f
    move/from16 v41, v10

    goto :goto_16

    .line 103
    :goto_18
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzajj;->zzh:[I

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzajj;->zzi:[J

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzajj;->zzj:[Z

    move-object/from16 v43, v4

    iget v4, v6, Lcom/google/android/gms/internal/ads/zzajh;->zzb:I

    move-object/from16 v44, v10

    move/from16 v10, v19

    if-ne v4, v10, :cond_20

    const/16 v21, 0x1

    and-int/lit8 v4, v26, 0x1

    if-eqz v4, :cond_20

    const/4 v4, 0x1

    goto :goto_19

    :cond_20
    const/4 v4, 0x0

    :goto_19
    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzajj;->zzg:[I

    .line 104
    aget v10, v10, v33

    add-int v10, v35, v10

    move-object/from16 v53, v11

    move-object/from16 v52, v12

    iget-wide v11, v6, Lcom/google/android/gms/internal/ads/zzajh;->zzc:J

    move-wide/from16 v49, v11

    iget-wide v11, v1, Lcom/google/android/gms/internal/ads/zzajj;->zzp:J

    move/from16 v6, v35

    :goto_1a
    if-ge v6, v10, :cond_2a

    if-eqz v38, :cond_21

    .line 105
    invoke-virtual/range {v52 .. v52}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    move-result v33

    move/from16 v54, v4

    move/from16 v4, v33

    goto :goto_1b

    :cond_21
    move/from16 v54, v4

    iget v4, v7, Lcom/google/android/gms/internal/ads/zzaiq;->zzb:I

    :goto_1b
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzaiv;->zzg(I)I

    if-eqz v39, :cond_22

    .line 106
    invoke-virtual/range {v52 .. v52}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    move-result v33

    move/from16 v57, v33

    move/from16 v33, v6

    move/from16 v6, v57

    goto :goto_1c

    :cond_22
    move/from16 v33, v6

    iget v6, v7, Lcom/google/android/gms/internal/ads/zzaiq;->zzc:I

    :goto_1c
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzaiv;->zzg(I)I

    if-eqz v41, :cond_23

    .line 107
    invoke-virtual/range {v52 .. v52}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    move-result v35

    goto :goto_1d

    :cond_23
    if-nez v33, :cond_25

    if-eqz v37, :cond_24

    move/from16 v35, v36

    const/16 v33, 0x0

    goto :goto_1d

    :cond_24
    const/16 v33, 0x0

    :cond_25
    move/from16 v35, v42

    :goto_1d
    if-eqz v40, :cond_26

    .line 108
    invoke-virtual/range {v52 .. v52}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    move-result v45

    move/from16 v55, v6

    move/from16 v6, v45

    :goto_1e
    move-object/from16 v56, v7

    goto :goto_1f

    :cond_26
    move/from16 v55, v6

    const/4 v6, 0x0

    goto :goto_1e

    :goto_1f
    int-to-long v6, v6

    add-long/2addr v6, v11

    sub-long v45, v6, v29

    const-wide/32 v47, 0xf4240

    sget-object v51, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 109
    invoke-static/range {v45 .. v51}, Lcom/google/android/gms/internal/ads/zzeu;->zzu(JJJLjava/math/RoundingMode;)J

    move-result-wide v6

    .line 110
    aput-wide v6, v44, v33

    move-wide/from16 v45, v6

    iget-boolean v6, v1, Lcom/google/android/gms/internal/ads/zzajj;->zzq:Z

    if-nez v6, :cond_27

    iget-object v6, v15, Lcom/google/android/gms/internal/ads/zzaiu;->zzd:Lcom/google/android/gms/internal/ads/zzajk;

    .line 111
    iget-wide v6, v6, Lcom/google/android/gms/internal/ads/zzajk;->zzh:J

    add-long v6, v45, v6

    aput-wide v6, v44, v33

    .line 112
    :cond_27
    aput v55, v43, v33

    shr-int/lit8 v6, v35, 0x10

    const/16 v21, 0x1

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_28

    if-eqz v54, :cond_29

    if-nez v33, :cond_28

    move/from16 v6, v21

    const/16 v33, 0x0

    goto :goto_20

    :cond_28
    const/4 v6, 0x0

    goto :goto_20

    :cond_29
    move/from16 v6, v21

    .line 113
    :goto_20
    aput-boolean v6, v53, v33

    int-to-long v6, v4

    add-long/2addr v11, v6

    add-int/lit8 v6, v33, 0x1

    move/from16 v4, v54

    move-object/from16 v7, v56

    goto/16 :goto_1a

    :cond_2a
    const/16 v21, 0x1

    .line 114
    iput-wide v11, v1, Lcom/google/android/gms/internal/ads/zzajj;->zzp:J

    move v11, v10

    move v7, v14

    goto :goto_21

    :cond_2b
    move/from16 v32, v6

    move/from16 v33, v7

    move/from16 v34, v10

    move/from16 v35, v11

    const/16 v21, 0x1

    :goto_21
    add-int/lit8 v6, v32, 0x1

    move/from16 v10, v34

    const v4, 0x7472756e

    const/16 v19, 0x2

    goto/16 :goto_13

    .line 115
    :cond_2c
    iget-object v4, v15, Lcom/google/android/gms/internal/ads/zzaiu;->zzd:Lcom/google/android/gms/internal/ads/zzajk;

    .line 116
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzajk;->zza:Lcom/google/android/gms/internal/ads/zzajh;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzajj;->zza:Lcom/google/android/gms/internal/ads/zzaiq;

    .line 117
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    iget v6, v6, Lcom/google/android/gms/internal/ads/zzaiq;->zza:I

    .line 119
    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/ads/zzajh;->zzb(I)Lcom/google/android/gms/internal/ads/zzaji;

    move-result-object v4

    const v6, 0x7361697a

    .line 120
    invoke-virtual {v9, v6}, Lcom/google/android/gms/internal/ads/zzez;->zzb(I)Lcom/google/android/gms/internal/ads/zzfa;

    move-result-object v6

    if-eqz v6, :cond_33

    .line 121
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    iget v7, v4, Lcom/google/android/gms/internal/ads/zzaji;->zzd:I

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzfa;->zza:Lcom/google/android/gms/internal/ads/zzek;

    const/16 v10, 0x8

    .line 123
    invoke-virtual {v6, v10}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 124
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    move-result v11

    const/4 v12, 0x1

    and-int/2addr v11, v12

    if-ne v11, v12, :cond_2d

    .line 125
    invoke-virtual {v6, v10}, Lcom/google/android/gms/internal/ads/zzek;->zzM(I)V

    .line 126
    :cond_2d
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzek;->zzm()I

    move-result v10

    .line 127
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzek;->zzp()I

    move-result v11

    iget v12, v1, Lcom/google/android/gms/internal/ads/zzajj;->zze:I

    if-gt v11, v12, :cond_32

    if-nez v10, :cond_30

    .line 128
    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzajj;->zzl:[Z

    const/4 v12, 0x0

    const/4 v14, 0x0

    :goto_22
    if-ge v12, v11, :cond_2f

    .line 129
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzek;->zzm()I

    move-result v15

    add-int/2addr v14, v15

    if-le v15, v7, :cond_2e

    const/4 v15, 0x1

    goto :goto_23

    :cond_2e
    const/4 v15, 0x0

    .line 130
    :goto_23
    aput-boolean v15, v10, v12

    const/16 v21, 0x1

    add-int/lit8 v12, v12, 0x1

    goto :goto_22

    :cond_2f
    const/4 v10, 0x0

    goto :goto_25

    :cond_30
    if-le v10, v7, :cond_31

    const/4 v6, 0x1

    goto :goto_24

    :cond_31
    const/4 v6, 0x0

    :goto_24
    mul-int v14, v10, v11

    .line 131
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzajj;->zzl:[Z

    const/4 v10, 0x0

    .line 132
    invoke-static {v7, v10, v11, v6}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 133
    :goto_25
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzajj;->zzl:[Z

    iget v7, v1, Lcom/google/android/gms/internal/ads/zzajj;->zze:I

    .line 134
    invoke-static {v6, v11, v7, v10}, Ljava/util/Arrays;->fill([ZIIZ)V

    if-lez v14, :cond_33

    .line 135
    invoke-virtual {v1, v14}, Lcom/google/android/gms/internal/ads/zzajj;->zza(I)V

    goto :goto_26

    .line 136
    :cond_32
    new-instance v1, Ljava/lang/StringBuilder;

    .line 137
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Saiz sample count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is greater than fragment sample count"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v1

    throw v1

    :cond_33
    :goto_26
    const v6, 0x7361696f

    .line 138
    invoke-virtual {v9, v6}, Lcom/google/android/gms/internal/ads/zzez;->zzb(I)Lcom/google/android/gms/internal/ads/zzfa;

    move-result-object v6

    if-eqz v6, :cond_36

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzfa;->zza:Lcom/google/android/gms/internal/ads/zzek;

    const/16 v10, 0x8

    .line 139
    invoke-virtual {v6, v10}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 140
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    move-result v7

    const/4 v12, 0x1

    and-int/lit8 v11, v7, 0x1

    if-ne v11, v12, :cond_34

    .line 141
    invoke-virtual {v6, v10}, Lcom/google/android/gms/internal/ads/zzek;->zzM(I)V

    .line 142
    :cond_34
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzek;->zzp()I

    move-result v10

    if-ne v10, v12, :cond_37

    .line 143
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzaip;->zza(I)I

    move-result v7

    iget-wide v10, v1, Lcom/google/android/gms/internal/ads/zzajj;->zzc:J

    if-nez v7, :cond_35

    .line 144
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzek;->zzu()J

    move-result-wide v6

    goto :goto_27

    :cond_35
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzek;->zzw()J

    move-result-wide v6

    :goto_27
    add-long/2addr v10, v6

    iput-wide v10, v1, Lcom/google/android/gms/internal/ads/zzajj;->zzc:J

    :cond_36
    const/4 v6, 0x0

    goto :goto_28

    .line 145
    :cond_37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 146
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected saio entry count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    invoke-static {v1, v6}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v1

    throw v1

    :goto_28
    const v7, 0x73656e63

    .line 147
    invoke-virtual {v9, v7}, Lcom/google/android/gms/internal/ads/zzez;->zzb(I)Lcom/google/android/gms/internal/ads/zzfa;

    move-result-object v7

    if-eqz v7, :cond_38

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzfa;->zza:Lcom/google/android/gms/internal/ads/zzek;

    const/4 v10, 0x0

    .line 148
    invoke-static {v7, v10, v1}, Lcom/google/android/gms/internal/ads/zzaiv;->zzk(Lcom/google/android/gms/internal/ads/zzek;ILcom/google/android/gms/internal/ads/zzajj;)V

    :cond_38
    if-eqz v4, :cond_39

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzaji;->zzb:Ljava/lang/String;

    move-object/from16 v33, v4

    goto :goto_29

    :cond_39
    move-object/from16 v33, v6

    :goto_29
    move-object v4, v6

    move-object v7, v4

    const/4 v9, 0x0

    .line 149
    :goto_2a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_3c

    .line 150
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/ads/zzfa;

    .line 151
    iget-object v11, v10, Lcom/google/android/gms/internal/ads/zzfa;->zza:Lcom/google/android/gms/internal/ads/zzek;

    .line 152
    iget v10, v10, Lcom/google/android/gms/internal/ads/zzfc;->zzd:I

    const v12, 0x73626770

    const v14, 0x73656967

    if-ne v10, v12, :cond_3b

    const/16 v12, 0xc

    .line 153
    invoke-virtual {v11, v12}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 154
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    move-result v10

    if-ne v10, v14, :cond_3a

    move-object v4, v11

    :cond_3a
    :goto_2b
    const/4 v10, 0x1

    goto :goto_2c

    :cond_3b
    const/16 v12, 0xc

    const v15, 0x73677064

    if-ne v10, v15, :cond_3a

    .line 155
    invoke-virtual {v11, v12}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 156
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    move-result v10

    if-ne v10, v14, :cond_3a

    move-object v7, v11

    goto :goto_2b

    :goto_2c
    add-int/2addr v9, v10

    goto :goto_2a

    :cond_3c
    const/4 v10, 0x1

    const/16 v12, 0xc

    if-eqz v4, :cond_3d

    if-nez v7, :cond_3e

    :cond_3d
    move/from16 v14, v18

    const/4 v10, 0x2

    goto/16 :goto_2f

    :cond_3e
    const/16 v9, 0x8

    .line 157
    invoke-virtual {v4, v9}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 158
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    move-result v11

    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzaip;->zza(I)I

    move-result v11

    move/from16 v14, v18

    .line 159
    invoke-virtual {v4, v14}, Lcom/google/android/gms/internal/ads/zzek;->zzM(I)V

    if-ne v11, v10, :cond_3f

    .line 160
    invoke-virtual {v4, v14}, Lcom/google/android/gms/internal/ads/zzek;->zzM(I)V

    .line 161
    :cond_3f
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    move-result v4

    if-ne v4, v10, :cond_45

    .line 162
    invoke-virtual {v7, v9}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 163
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzaip;->zza(I)I

    move-result v4

    .line 164
    invoke-virtual {v7, v14}, Lcom/google/android/gms/internal/ads/zzek;->zzM(I)V

    if-ne v4, v10, :cond_41

    .line 165
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzek;->zzu()J

    move-result-wide v9

    cmp-long v4, v9, v29

    if-eqz v4, :cond_40

    const/4 v10, 0x2

    goto :goto_2d

    .line 166
    :cond_40
    const-string v1, "Variable length description in sgpd found (unsupported)"

    .line 167
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaz;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v1

    throw v1

    :cond_41
    const/4 v10, 0x2

    if-lt v4, v10, :cond_42

    .line 168
    invoke-virtual {v7, v14}, Lcom/google/android/gms/internal/ads/zzek;->zzM(I)V

    .line 169
    :cond_42
    :goto_2d
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzek;->zzu()J

    move-result-wide v17

    const-wide/16 v19, 0x1

    cmp-long v4, v17, v19

    if-nez v4, :cond_44

    const/4 v4, 0x1

    .line 170
    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/ads/zzek;->zzM(I)V

    .line 171
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzek;->zzm()I

    move-result v9

    and-int/lit16 v11, v9, 0xf0

    shr-int/lit8 v36, v11, 0x4

    and-int/lit8 v37, v9, 0xf

    .line 172
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzek;->zzm()I

    move-result v9

    if-ne v9, v4, :cond_46

    .line 173
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzek;->zzm()I

    move-result v34

    move/from16 v9, v16

    new-array v11, v9, [B

    const/4 v15, 0x0

    .line 174
    invoke-virtual {v7, v11, v15, v9}, Lcom/google/android/gms/internal/ads/zzek;->zzH([BII)V

    if-nez v34, :cond_43

    .line 175
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzek;->zzm()I

    move-result v6

    new-array v9, v6, [B

    .line 176
    invoke-virtual {v7, v9, v15, v6}, Lcom/google/android/gms/internal/ads/zzek;->zzH([BII)V

    move-object/from16 v38, v9

    goto :goto_2e

    :cond_43
    move-object/from16 v38, v6

    :goto_2e
    iput-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzajj;->zzk:Z

    new-instance v31, Lcom/google/android/gms/internal/ads/zzaji;

    const/16 v32, 0x1

    move-object/from16 v35, v11

    .line 177
    invoke-direct/range {v31 .. v38}, Lcom/google/android/gms/internal/ads/zzaji;-><init>(ZLjava/lang/String;I[BII[B)V

    move-object/from16 v4, v31

    iput-object v4, v1, Lcom/google/android/gms/internal/ads/zzajj;->zzm:Lcom/google/android/gms/internal/ads/zzaji;

    goto :goto_2f

    .line 178
    :cond_44
    const-string v1, "Entry count in sgpd != 1 (unsupported)."

    .line 179
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaz;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v1

    throw v1

    .line 180
    :cond_45
    const-string v1, "Entry count in sbgp != 1 (unsupported)."

    .line 181
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaz;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v1

    throw v1

    .line 182
    :cond_46
    :goto_2f
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x0

    :goto_30
    if-ge v6, v4, :cond_49

    .line 183
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/ads/zzfa;

    .line 184
    iget v9, v7, Lcom/google/android/gms/internal/ads/zzfc;->zzd:I

    const v11, 0x75756964

    if-ne v9, v11, :cond_48

    .line 185
    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzfa;->zza:Lcom/google/android/gms/internal/ads/zzek;

    const/16 v9, 0x8

    .line 186
    invoke-virtual {v7, v9}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    const/16 v11, 0x10

    const/4 v15, 0x0

    .line 187
    invoke-virtual {v7, v5, v15, v11}, Lcom/google/android/gms/internal/ads/zzek;->zzH([BII)V

    sget-object v9, Lcom/google/android/gms/internal/ads/zzaiv;->zza:[B

    .line 188
    invoke-static {v5, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-eqz v9, :cond_47

    .line 189
    invoke-static {v7, v11, v1}, Lcom/google/android/gms/internal/ads/zzaiv;->zzk(Lcom/google/android/gms/internal/ads/zzek;ILcom/google/android/gms/internal/ads/zzajj;)V

    :cond_47
    :goto_31
    const/16 v21, 0x1

    goto :goto_32

    :cond_48
    const/16 v11, 0x10

    const/4 v15, 0x0

    goto :goto_31

    :goto_32
    add-int/lit8 v6, v6, 0x1

    goto :goto_30

    :cond_49
    const/16 v11, 0x10

    const/4 v15, 0x0

    const/16 v21, 0x1

    goto :goto_33

    :cond_4a
    move v15, v1

    move/from16 v26, v4

    move-object/from16 v28, v6

    move/from16 v27, v7

    move/from16 v11, v16

    move/from16 v14, v18

    move/from16 v10, v19

    const/16 v12, 0xc

    const-wide v22, -0x7fffffffffffffffL    # -4.9E-324

    :goto_33
    add-int/lit8 v13, v13, 0x1

    move/from16 v19, v10

    move/from16 v16, v11

    move/from16 v18, v14

    move v1, v15

    move/from16 v4, v26

    move/from16 v7, v27

    move-object/from16 v6, v28

    const/16 v2, 0x8

    goto/16 :goto_9

    :cond_4b
    move v15, v1

    move/from16 v11, v16

    move/from16 v14, v18

    move/from16 v10, v19

    const-wide v22, -0x7fffffffffffffffL    # -4.9E-324

    .line 190
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzez;->zzb:Ljava/util/List;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaiv;->zzh(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzs;

    move-result-object v1

    if-eqz v1, :cond_4c

    .line 191
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v2

    move v13, v15

    :goto_34
    if-ge v13, v2, :cond_4c

    .line 192
    invoke-virtual {v3, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzaiu;

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzaiu;->zzj(Lcom/google/android/gms/internal/ads/zzs;)V

    add-int/lit8 v13, v13, 0x1

    const/16 v21, 0x1

    goto :goto_34

    :cond_4c
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzy:J

    cmp-long v1, v1, v22

    if-eqz v1, :cond_50

    .line 193
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v1

    move v13, v15

    :goto_35
    if-ge v13, v1, :cond_4f

    .line 194
    invoke-virtual {v3, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzaiu;

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzy:J

    iget v6, v2, Lcom/google/android/gms/internal/ads/zzaiu;->zzf:I

    :goto_36
    iget-object v7, v2, Lcom/google/android/gms/internal/ads/zzaiu;->zzb:Lcom/google/android/gms/internal/ads/zzajj;

    iget v8, v7, Lcom/google/android/gms/internal/ads/zzajj;->zze:I

    if-ge v6, v8, :cond_4e

    iget-object v8, v7, Lcom/google/android/gms/internal/ads/zzajj;->zzi:[J

    .line 195
    aget-wide v15, v8, v6

    cmp-long v8, v15, v4

    if-gtz v8, :cond_4e

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzajj;->zzj:[Z

    .line 196
    aget-boolean v7, v7, v6

    if-eqz v7, :cond_4d

    iput v6, v2, Lcom/google/android/gms/internal/ads/zzaiu;->zzi:I

    :cond_4d
    const/16 v21, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_36

    :cond_4e
    const/16 v21, 0x1

    add-int/lit8 v13, v13, 0x1

    goto :goto_35

    :cond_4f
    move-wide/from16 v4, v22

    const/16 v21, 0x1

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzy:J

    goto/16 :goto_0

    :cond_50
    const/16 v21, 0x1

    goto/16 :goto_0

    :cond_51
    move/from16 v11, v16

    move/from16 v14, v18

    move/from16 v10, v19

    .line 197
    invoke-virtual {v6}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 198
    invoke-virtual {v6}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzez;

    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/ads/zzez;->zzc(Lcom/google/android/gms/internal/ads/zzez;)V

    goto/16 :goto_0

    .line 199
    :cond_52
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaiv;->zzj()V

    return-void
.end method

.method private static final zzm(Landroid/util/SparseArray;I)Lcom/google/android/gms/internal/ads/zzaiq;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Lcom/google/android/gms/internal/ads/zzaiq;

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Lcom/google/android/gms/internal/ads/zzaiq;

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    return-object p0
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzado;Lcom/google/android/gms/internal/ads/zzaej;)I
    .locals 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    :goto_0
    const/4 v3, 0x1

    .line 6
    :goto_1
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzr:I

    .line 7
    .line 8
    const v6, 0x656d7367

    .line 9
    .line 10
    .line 11
    const v7, 0x73696478

    .line 12
    .line 13
    .line 14
    const/4 v8, 0x2

    .line 15
    const/16 v9, 0x8

    .line 16
    .line 17
    const/4 v10, 0x0

    .line 18
    const/4 v11, 0x0

    .line 19
    if-eqz v4, :cond_3c

    .line 20
    .line 21
    const-string v12, "FragmentedMp4Extractor"

    .line 22
    .line 23
    if-eq v4, v3, :cond_2e

    .line 24
    .line 25
    const-wide v6, 0x7fffffffffffffffL

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    const/4 v13, 0x3

    .line 31
    if-eq v4, v8, :cond_29

    .line 32
    .line 33
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzB:Lcom/google/android/gms/internal/ads/zzaiu;

    .line 34
    .line 35
    if-nez v4, :cond_7

    .line 36
    .line 37
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzf:Landroid/util/SparseArray;

    .line 38
    .line 39
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 40
    .line 41
    .line 42
    move-result v14

    .line 43
    move-wide v15, v6

    .line 44
    move-object v6, v10

    .line 45
    move v7, v11

    .line 46
    :goto_2
    if-ge v7, v14, :cond_3

    .line 47
    .line 48
    invoke-virtual {v4, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v17

    .line 52
    move/from16 p2, v8

    .line 53
    .line 54
    move-object/from16 v8, v17

    .line 55
    .line 56
    check-cast v8, Lcom/google/android/gms/internal/ads/zzaiu;

    .line 57
    .line 58
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzaiu;->zzk(Lcom/google/android/gms/internal/ads/zzaiu;)Z

    .line 59
    .line 60
    .line 61
    move-result v17

    .line 62
    if-nez v17, :cond_0

    .line 63
    .line 64
    iget v5, v8, Lcom/google/android/gms/internal/ads/zzaiu;->zzf:I

    .line 65
    .line 66
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzaiu;->zzd:Lcom/google/android/gms/internal/ads/zzajk;

    .line 67
    .line 68
    iget v2, v2, Lcom/google/android/gms/internal/ads/zzajk;->zzb:I

    .line 69
    .line 70
    if-eq v5, v2, :cond_2

    .line 71
    .line 72
    :cond_0
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzaiu;->zzk(Lcom/google/android/gms/internal/ads/zzaiu;)Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-eqz v2, :cond_1

    .line 77
    .line 78
    iget v2, v8, Lcom/google/android/gms/internal/ads/zzaiu;->zzh:I

    .line 79
    .line 80
    iget-object v5, v8, Lcom/google/android/gms/internal/ads/zzaiu;->zzb:Lcom/google/android/gms/internal/ads/zzajj;

    .line 81
    .line 82
    iget v5, v5, Lcom/google/android/gms/internal/ads/zzajj;->zzd:I

    .line 83
    .line 84
    if-ne v2, v5, :cond_1

    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_1
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzaiu;->zzd()J

    .line 88
    .line 89
    .line 90
    move-result-wide v19

    .line 91
    cmp-long v2, v19, v15

    .line 92
    .line 93
    if-gez v2, :cond_2

    .line 94
    .line 95
    move-object v6, v8

    .line 96
    move-wide/from16 v15, v19

    .line 97
    .line 98
    :cond_2
    :goto_3
    add-int/2addr v7, v3

    .line 99
    move/from16 v8, p2

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_3
    move/from16 p2, v8

    .line 103
    .line 104
    if-nez v6, :cond_5

    .line 105
    .line 106
    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzw:J

    .line 107
    .line 108
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzado;->zzf()J

    .line 109
    .line 110
    .line 111
    move-result-wide v6

    .line 112
    sub-long/2addr v4, v6

    .line 113
    long-to-int v2, v4

    .line 114
    if-ltz v2, :cond_4

    .line 115
    .line 116
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzado;->zzk(I)V

    .line 117
    .line 118
    .line 119
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaiv;->zzj()V

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_4
    const-string v1, "Offset to end of mdat was negative."

    .line 124
    .line 125
    invoke-static {v1, v10}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    throw v1

    .line 130
    :cond_5
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzaiu;->zzd()J

    .line 131
    .line 132
    .line 133
    move-result-wide v4

    .line 134
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzado;->zzf()J

    .line 135
    .line 136
    .line 137
    move-result-wide v7

    .line 138
    sub-long/2addr v4, v7

    .line 139
    long-to-int v2, v4

    .line 140
    if-gez v2, :cond_6

    .line 141
    .line 142
    const-string v2, "Ignoring negative offset to sample data."

    .line 143
    .line 144
    invoke-static {v12, v2}, Lcom/google/android/gms/internal/ads/zzdx;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    move v2, v11

    .line 148
    :cond_6
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzado;->zzk(I)V

    .line 149
    .line 150
    .line 151
    iput-object v6, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzB:Lcom/google/android/gms/internal/ads/zzaiu;

    .line 152
    .line 153
    move-object v4, v6

    .line 154
    goto :goto_4

    .line 155
    :cond_7
    move/from16 p2, v8

    .line 156
    .line 157
    :goto_4
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzr:I

    .line 158
    .line 159
    const/4 v5, 0x6

    .line 160
    const-string v6, "video/hevc"

    .line 161
    .line 162
    const-string v7, "video/avc"

    .line 163
    .line 164
    if-ne v2, v13, :cond_10

    .line 165
    .line 166
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzaiu;->zzb()I

    .line 167
    .line 168
    .line 169
    move-result v2

    .line 170
    iput v2, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzC:I

    .line 171
    .line 172
    iget-object v2, v4, Lcom/google/android/gms/internal/ads/zzaiu;->zzd:Lcom/google/android/gms/internal/ads/zzajk;

    .line 173
    .line 174
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzajk;->zza:Lcom/google/android/gms/internal/ads/zzajh;

    .line 175
    .line 176
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzajh;->zzg:Lcom/google/android/gms/internal/ads/zzz;

    .line 177
    .line 178
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    .line 179
    .line 180
    invoke-static {v2, v7}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v8

    .line 184
    if-nez v8, :cond_8

    .line 185
    .line 186
    invoke-static {v2, v6}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    :cond_8
    iput-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzF:Z

    .line 190
    .line 191
    iget v2, v4, Lcom/google/android/gms/internal/ads/zzaiu;->zzf:I

    .line 192
    .line 193
    iget v8, v4, Lcom/google/android/gms/internal/ads/zzaiu;->zzi:I

    .line 194
    .line 195
    if-ge v2, v8, :cond_d

    .line 196
    .line 197
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzC:I

    .line 198
    .line 199
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzado;->zzk(I)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzaiu;->zzf()Lcom/google/android/gms/internal/ads/zzaji;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    if-nez v1, :cond_9

    .line 207
    .line 208
    goto :goto_5

    .line 209
    :cond_9
    iget-object v2, v4, Lcom/google/android/gms/internal/ads/zzaiu;->zzb:Lcom/google/android/gms/internal/ads/zzajj;

    .line 210
    .line 211
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzajj;->zzn:Lcom/google/android/gms/internal/ads/zzek;

    .line 212
    .line 213
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzaji;->zzd:I

    .line 214
    .line 215
    if-eqz v1, :cond_a

    .line 216
    .line 217
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzek;->zzM(I)V

    .line 218
    .line 219
    .line 220
    :cond_a
    iget v1, v4, Lcom/google/android/gms/internal/ads/zzaiu;->zzf:I

    .line 221
    .line 222
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzajj;->zzb(I)Z

    .line 223
    .line 224
    .line 225
    move-result v1

    .line 226
    if-eqz v1, :cond_b

    .line 227
    .line 228
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzek;->zzq()I

    .line 229
    .line 230
    .line 231
    move-result v1

    .line 232
    mul-int/2addr v1, v5

    .line 233
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzek;->zzM(I)V

    .line 234
    .line 235
    .line 236
    :cond_b
    :goto_5
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzaiu;->zzl()Z

    .line 237
    .line 238
    .line 239
    move-result v1

    .line 240
    if-nez v1, :cond_c

    .line 241
    .line 242
    iput-object v10, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzB:Lcom/google/android/gms/internal/ads/zzaiu;

    .line 243
    .line 244
    :cond_c
    move v1, v13

    .line 245
    goto/16 :goto_16

    .line 246
    .line 247
    :cond_d
    iget-object v2, v4, Lcom/google/android/gms/internal/ads/zzaiu;->zzd:Lcom/google/android/gms/internal/ads/zzajk;

    .line 248
    .line 249
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzajk;->zza:Lcom/google/android/gms/internal/ads/zzajh;

    .line 250
    .line 251
    iget v2, v2, Lcom/google/android/gms/internal/ads/zzajh;->zzh:I

    .line 252
    .line 253
    if-ne v2, v3, :cond_e

    .line 254
    .line 255
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzC:I

    .line 256
    .line 257
    add-int/lit8 v2, v2, -0x8

    .line 258
    .line 259
    iput v2, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzC:I

    .line 260
    .line 261
    invoke-interface {v1, v9}, Lcom/google/android/gms/internal/ads/zzado;->zzk(I)V

    .line 262
    .line 263
    .line 264
    :cond_e
    iget-object v2, v4, Lcom/google/android/gms/internal/ads/zzaiu;->zzd:Lcom/google/android/gms/internal/ads/zzajk;

    .line 265
    .line 266
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzajk;->zza:Lcom/google/android/gms/internal/ads/zzajh;

    .line 267
    .line 268
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzajh;->zzg:Lcom/google/android/gms/internal/ads/zzz;

    .line 269
    .line 270
    const-string v8, "audio/ac4"

    .line 271
    .line 272
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    .line 273
    .line 274
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    move-result v2

    .line 278
    if-eqz v2, :cond_f

    .line 279
    .line 280
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzC:I

    .line 281
    .line 282
    const/4 v8, 0x7

    .line 283
    invoke-virtual {v4, v2, v8}, Lcom/google/android/gms/internal/ads/zzaiu;->zzc(II)I

    .line 284
    .line 285
    .line 286
    move-result v2

    .line 287
    iput v2, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzD:I

    .line 288
    .line 289
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzC:I

    .line 290
    .line 291
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzk:Lcom/google/android/gms/internal/ads/zzek;

    .line 292
    .line 293
    invoke-static {v2, v9}, Lcom/google/android/gms/internal/ads/zzacr;->zzc(ILcom/google/android/gms/internal/ads/zzek;)V

    .line 294
    .line 295
    .line 296
    iget-object v2, v4, Lcom/google/android/gms/internal/ads/zzaiu;->zza:Lcom/google/android/gms/internal/ads/zzaet;

    .line 297
    .line 298
    invoke-interface {v2, v9, v8}, Lcom/google/android/gms/internal/ads/zzaet;->zzr(Lcom/google/android/gms/internal/ads/zzek;I)V

    .line 299
    .line 300
    .line 301
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzD:I

    .line 302
    .line 303
    add-int/2addr v2, v8

    .line 304
    iput v2, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzD:I

    .line 305
    .line 306
    goto :goto_6

    .line 307
    :cond_f
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzC:I

    .line 308
    .line 309
    invoke-virtual {v4, v2, v11}, Lcom/google/android/gms/internal/ads/zzaiu;->zzc(II)I

    .line 310
    .line 311
    .line 312
    move-result v2

    .line 313
    iput v2, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzD:I

    .line 314
    .line 315
    :goto_6
    iget v8, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzC:I

    .line 316
    .line 317
    add-int/2addr v8, v2

    .line 318
    iput v8, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzC:I

    .line 319
    .line 320
    const/4 v2, 0x4

    .line 321
    iput v2, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzr:I

    .line 322
    .line 323
    iput v11, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzE:I

    .line 324
    .line 325
    :cond_10
    iget-object v2, v4, Lcom/google/android/gms/internal/ads/zzaiu;->zzd:Lcom/google/android/gms/internal/ads/zzajk;

    .line 326
    .line 327
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzajk;->zza:Lcom/google/android/gms/internal/ads/zzajh;

    .line 328
    .line 329
    iget-object v8, v4, Lcom/google/android/gms/internal/ads/zzaiu;->zza:Lcom/google/android/gms/internal/ads/zzaet;

    .line 330
    .line 331
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzaiu;->zze()J

    .line 332
    .line 333
    .line 334
    move-result-wide v14

    .line 335
    iget v9, v2, Lcom/google/android/gms/internal/ads/zzajh;->zzk:I

    .line 336
    .line 337
    if-nez v9, :cond_12

    .line 338
    .line 339
    :goto_7
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzD:I

    .line 340
    .line 341
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzC:I

    .line 342
    .line 343
    if-ge v2, v5, :cond_11

    .line 344
    .line 345
    sub-int/2addr v5, v2

    .line 346
    invoke-interface {v8, v1, v5, v11}, Lcom/google/android/gms/internal/ads/zzaet;->zzf(Lcom/google/android/gms/internal/ads/zzl;IZ)I

    .line 347
    .line 348
    .line 349
    move-result v2

    .line 350
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzD:I

    .line 351
    .line 352
    add-int/2addr v5, v2

    .line 353
    iput v5, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzD:I

    .line 354
    .line 355
    goto :goto_7

    .line 356
    :cond_11
    move-object/from16 v28, v4

    .line 357
    .line 358
    goto/16 :goto_13

    .line 359
    .line 360
    :cond_12
    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzh:Lcom/google/android/gms/internal/ads/zzek;

    .line 361
    .line 362
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 363
    .line 364
    .line 365
    move-result-object v13

    .line 366
    aput-byte v11, v13, v11

    .line 367
    .line 368
    aput-byte v11, v13, v3

    .line 369
    .line 370
    aput-byte v11, v13, p2

    .line 371
    .line 372
    const/16 v18, 0x4

    .line 373
    .line 374
    rsub-int/lit8 v10, v9, 0x4

    .line 375
    .line 376
    move/from16 v26, v3

    .line 377
    .line 378
    :goto_8
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzD:I

    .line 379
    .line 380
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzC:I

    .line 381
    .line 382
    if-ge v3, v5, :cond_11

    .line 383
    .line 384
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzE:I

    .line 385
    .line 386
    if-nez v3, :cond_1e

    .line 387
    .line 388
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzJ:[Lcom/google/android/gms/internal/ads/zzaet;

    .line 389
    .line 390
    array-length v3, v3

    .line 391
    if-gtz v3, :cond_14

    .line 392
    .line 393
    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzF:Z

    .line 394
    .line 395
    if-nez v3, :cond_13

    .line 396
    .line 397
    goto :goto_9

    .line 398
    :cond_13
    move v3, v11

    .line 399
    goto :goto_a

    .line 400
    :cond_14
    :goto_9
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzajh;->zzg:Lcom/google/android/gms/internal/ads/zzz;

    .line 401
    .line 402
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzfs;->zzb(Lcom/google/android/gms/internal/ads/zzz;)I

    .line 403
    .line 404
    .line 405
    move-result v3

    .line 406
    add-int v5, v9, v3

    .line 407
    .line 408
    iget v11, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzC:I

    .line 409
    .line 410
    move/from16 p2, v3

    .line 411
    .line 412
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzD:I

    .line 413
    .line 414
    sub-int/2addr v11, v3

    .line 415
    if-le v5, v11, :cond_15

    .line 416
    .line 417
    const/4 v3, 0x0

    .line 418
    goto :goto_a

    .line 419
    :cond_15
    move/from16 v3, p2

    .line 420
    .line 421
    :goto_a
    add-int v5, v9, v3

    .line 422
    .line 423
    invoke-interface {v1, v13, v10, v5}, Lcom/google/android/gms/internal/ads/zzado;->zzi([BII)V

    .line 424
    .line 425
    .line 426
    const/4 v5, 0x0

    .line 427
    invoke-virtual {v12, v5}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 428
    .line 429
    .line 430
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    .line 431
    .line 432
    .line 433
    move-result v11

    .line 434
    if-ltz v11, :cond_1d

    .line 435
    .line 436
    sub-int/2addr v11, v3

    .line 437
    iput v11, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzE:I

    .line 438
    .line 439
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzg:Lcom/google/android/gms/internal/ads/zzek;

    .line 440
    .line 441
    invoke-virtual {v11, v5}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 442
    .line 443
    .line 444
    const/4 v5, 0x4

    .line 445
    invoke-interface {v8, v11, v5}, Lcom/google/android/gms/internal/ads/zzaet;->zzr(Lcom/google/android/gms/internal/ads/zzek;I)V

    .line 446
    .line 447
    .line 448
    iget v11, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzD:I

    .line 449
    .line 450
    add-int/2addr v11, v5

    .line 451
    iput v11, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzD:I

    .line 452
    .line 453
    iget v11, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzC:I

    .line 454
    .line 455
    add-int/2addr v11, v10

    .line 456
    iput v11, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzC:I

    .line 457
    .line 458
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzJ:[Lcom/google/android/gms/internal/ads/zzaet;

    .line 459
    .line 460
    array-length v11, v11

    .line 461
    if-lez v11, :cond_1b

    .line 462
    .line 463
    if-lez v3, :cond_1b

    .line 464
    .line 465
    iget-object v11, v2, Lcom/google/android/gms/internal/ads/zzajh;->zzg:Lcom/google/android/gms/internal/ads/zzz;

    .line 466
    .line 467
    aget-byte v20, v13, v5

    .line 468
    .line 469
    sget-object v5, Lcom/google/android/gms/internal/ads/zzfs;->zza:[B

    .line 470
    .line 471
    iget-object v5, v11, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    .line 472
    .line 473
    invoke-static {v5, v7}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 474
    .line 475
    .line 476
    move-result v21

    .line 477
    move-object/from16 v28, v4

    .line 478
    .line 479
    if-nez v21, :cond_17

    .line 480
    .line 481
    iget-object v4, v11, Lcom/google/android/gms/internal/ads/zzz;->zzk:Ljava/lang/String;

    .line 482
    .line 483
    invoke-static {v4, v7}, Lcom/google/android/gms/internal/ads/zzay;->zzg(Ljava/lang/String;Ljava/lang/String;)Z

    .line 484
    .line 485
    .line 486
    move-result v4

    .line 487
    if-eqz v4, :cond_16

    .line 488
    .line 489
    goto :goto_b

    .line 490
    :cond_16
    move-object/from16 v21, v7

    .line 491
    .line 492
    const/4 v7, 0x6

    .line 493
    goto :goto_c

    .line 494
    :cond_17
    :goto_b
    and-int/lit8 v4, v20, 0x1f

    .line 495
    .line 496
    move-object/from16 v21, v7

    .line 497
    .line 498
    const/4 v7, 0x6

    .line 499
    if-eq v4, v7, :cond_1a

    .line 500
    .line 501
    :goto_c
    invoke-static {v5, v6}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 502
    .line 503
    .line 504
    move-result v4

    .line 505
    if-nez v4, :cond_19

    .line 506
    .line 507
    iget-object v4, v11, Lcom/google/android/gms/internal/ads/zzz;->zzk:Ljava/lang/String;

    .line 508
    .line 509
    invoke-static {v4, v6}, Lcom/google/android/gms/internal/ads/zzay;->zzg(Ljava/lang/String;Ljava/lang/String;)Z

    .line 510
    .line 511
    .line 512
    move-result v4

    .line 513
    if-eqz v4, :cond_18

    .line 514
    .line 515
    goto :goto_e

    .line 516
    :cond_18
    :goto_d
    const/4 v4, 0x0

    .line 517
    goto :goto_f

    .line 518
    :cond_19
    :goto_e
    and-int/lit8 v4, v20, 0x7e

    .line 519
    .line 520
    shr-int/lit8 v4, v4, 0x1

    .line 521
    .line 522
    const/16 v5, 0x27

    .line 523
    .line 524
    if-ne v4, v5, :cond_18

    .line 525
    .line 526
    :cond_1a
    move/from16 v4, v26

    .line 527
    .line 528
    goto :goto_f

    .line 529
    :cond_1b
    move-object/from16 v28, v4

    .line 530
    .line 531
    move-object/from16 v21, v7

    .line 532
    .line 533
    const/4 v7, 0x6

    .line 534
    goto :goto_d

    .line 535
    :goto_f
    iput-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzG:Z

    .line 536
    .line 537
    invoke-interface {v8, v12, v3}, Lcom/google/android/gms/internal/ads/zzaet;->zzr(Lcom/google/android/gms/internal/ads/zzek;I)V

    .line 538
    .line 539
    .line 540
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzD:I

    .line 541
    .line 542
    add-int/2addr v4, v3

    .line 543
    iput v4, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzD:I

    .line 544
    .line 545
    if-lez v3, :cond_1c

    .line 546
    .line 547
    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzF:Z

    .line 548
    .line 549
    if-nez v4, :cond_1c

    .line 550
    .line 551
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzajh;->zzg:Lcom/google/android/gms/internal/ads/zzz;

    .line 552
    .line 553
    const/4 v5, 0x4

    .line 554
    invoke-static {v13, v5, v3, v4}, Lcom/google/android/gms/internal/ads/zzfs;->zzj([BIILcom/google/android/gms/internal/ads/zzz;)Z

    .line 555
    .line 556
    .line 557
    move-result v3

    .line 558
    if-eqz v3, :cond_1c

    .line 559
    .line 560
    move/from16 v3, v26

    .line 561
    .line 562
    iput-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzF:Z

    .line 563
    .line 564
    move v5, v7

    .line 565
    move-object/from16 v7, v21

    .line 566
    .line 567
    move-object/from16 v4, v28

    .line 568
    .line 569
    const/4 v11, 0x0

    .line 570
    goto/16 :goto_8

    .line 571
    .line 572
    :cond_1c
    move v5, v7

    .line 573
    move-object/from16 v7, v21

    .line 574
    .line 575
    move-object/from16 v4, v28

    .line 576
    .line 577
    :goto_10
    const/4 v11, 0x0

    .line 578
    const/16 v26, 0x1

    .line 579
    .line 580
    goto/16 :goto_8

    .line 581
    .line 582
    :cond_1d
    const-string v1, "Invalid NAL length"

    .line 583
    .line 584
    const/4 v2, 0x0

    .line 585
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 586
    .line 587
    .line 588
    move-result-object v1

    .line 589
    throw v1

    .line 590
    :cond_1e
    move-object/from16 v28, v4

    .line 591
    .line 592
    move-object/from16 v21, v7

    .line 593
    .line 594
    const/4 v7, 0x6

    .line 595
    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzG:Z

    .line 596
    .line 597
    if-eqz v4, :cond_21

    .line 598
    .line 599
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzi:Lcom/google/android/gms/internal/ads/zzek;

    .line 600
    .line 601
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzek;->zzI(I)V

    .line 602
    .line 603
    .line 604
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 605
    .line 606
    .line 607
    move-result-object v3

    .line 608
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzE:I

    .line 609
    .line 610
    const/4 v11, 0x0

    .line 611
    invoke-interface {v1, v3, v11, v5}, Lcom/google/android/gms/internal/ads/zzado;->zzi([BII)V

    .line 612
    .line 613
    .line 614
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzE:I

    .line 615
    .line 616
    invoke-interface {v8, v4, v3}, Lcom/google/android/gms/internal/ads/zzaet;->zzr(Lcom/google/android/gms/internal/ads/zzek;I)V

    .line 617
    .line 618
    .line 619
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzE:I

    .line 620
    .line 621
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 622
    .line 623
    .line 624
    move-result-object v5

    .line 625
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzek;->zzd()I

    .line 626
    .line 627
    .line 628
    move-result v7

    .line 629
    invoke-static {v5, v7}, Lcom/google/android/gms/internal/ads/zzfs;->zzc([BI)I

    .line 630
    .line 631
    .line 632
    move-result v5

    .line 633
    invoke-virtual {v4, v11}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 634
    .line 635
    .line 636
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzek;->zzK(I)V

    .line 637
    .line 638
    .line 639
    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzajh;->zzg:Lcom/google/android/gms/internal/ads/zzz;

    .line 640
    .line 641
    iget v5, v5, Lcom/google/android/gms/internal/ads/zzz;->zzq:I

    .line 642
    .line 643
    const/4 v7, -0x1

    .line 644
    if-ne v5, v7, :cond_1f

    .line 645
    .line 646
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzp:Lcom/google/android/gms/internal/ads/zzfw;

    .line 647
    .line 648
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzfw;->zza()I

    .line 649
    .line 650
    .line 651
    move-result v7

    .line 652
    if-eqz v7, :cond_20

    .line 653
    .line 654
    invoke-virtual {v5, v11}, Lcom/google/android/gms/internal/ads/zzfw;->zze(I)V

    .line 655
    .line 656
    .line 657
    goto :goto_11

    .line 658
    :cond_1f
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzp:Lcom/google/android/gms/internal/ads/zzfw;

    .line 659
    .line 660
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzfw;->zza()I

    .line 661
    .line 662
    .line 663
    move-result v11

    .line 664
    if-eq v11, v5, :cond_20

    .line 665
    .line 666
    invoke-virtual {v7, v5}, Lcom/google/android/gms/internal/ads/zzfw;->zze(I)V

    .line 667
    .line 668
    .line 669
    :cond_20
    :goto_11
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzp:Lcom/google/android/gms/internal/ads/zzfw;

    .line 670
    .line 671
    invoke-virtual {v5, v14, v15, v4}, Lcom/google/android/gms/internal/ads/zzfw;->zzb(JLcom/google/android/gms/internal/ads/zzek;)V

    .line 672
    .line 673
    .line 674
    invoke-virtual/range {v28 .. v28}, Lcom/google/android/gms/internal/ads/zzaiu;->zza()I

    .line 675
    .line 676
    .line 677
    move-result v4

    .line 678
    const/16 v18, 0x4

    .line 679
    .line 680
    and-int/lit8 v4, v4, 0x4

    .line 681
    .line 682
    if-eqz v4, :cond_22

    .line 683
    .line 684
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzfw;->zzd()V

    .line 685
    .line 686
    .line 687
    goto :goto_12

    .line 688
    :cond_21
    const/4 v5, 0x0

    .line 689
    invoke-interface {v8, v1, v3, v5}, Lcom/google/android/gms/internal/ads/zzaet;->zzf(Lcom/google/android/gms/internal/ads/zzl;IZ)I

    .line 690
    .line 691
    .line 692
    move-result v3

    .line 693
    :cond_22
    :goto_12
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzD:I

    .line 694
    .line 695
    add-int/2addr v4, v3

    .line 696
    iput v4, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzD:I

    .line 697
    .line 698
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzE:I

    .line 699
    .line 700
    sub-int/2addr v4, v3

    .line 701
    iput v4, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzE:I

    .line 702
    .line 703
    move-object/from16 v7, v21

    .line 704
    .line 705
    move-object/from16 v4, v28

    .line 706
    .line 707
    const/4 v5, 0x6

    .line 708
    goto/16 :goto_10

    .line 709
    .line 710
    :goto_13
    invoke-virtual/range {v28 .. v28}, Lcom/google/android/gms/internal/ads/zzaiu;->zza()I

    .line 711
    .line 712
    .line 713
    move-result v1

    .line 714
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzF:Z

    .line 715
    .line 716
    if-nez v2, :cond_23

    .line 717
    .line 718
    const/high16 v2, 0x4000000

    .line 719
    .line 720
    or-int/2addr v1, v2

    .line 721
    :cond_23
    move/from16 v22, v1

    .line 722
    .line 723
    invoke-virtual/range {v28 .. v28}, Lcom/google/android/gms/internal/ads/zzaiu;->zzf()Lcom/google/android/gms/internal/ads/zzaji;

    .line 724
    .line 725
    .line 726
    move-result-object v1

    .line 727
    if-eqz v1, :cond_24

    .line 728
    .line 729
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaji;->zzc:Lcom/google/android/gms/internal/ads/zzaes;

    .line 730
    .line 731
    move-object/from16 v25, v1

    .line 732
    .line 733
    goto :goto_14

    .line 734
    :cond_24
    const/16 v25, 0x0

    .line 735
    .line 736
    :goto_14
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzC:I

    .line 737
    .line 738
    const/16 v24, 0x0

    .line 739
    .line 740
    move/from16 v23, v1

    .line 741
    .line 742
    move-object/from16 v19, v8

    .line 743
    .line 744
    move-wide/from16 v20, v14

    .line 745
    .line 746
    invoke-interface/range {v19 .. v25}, Lcom/google/android/gms/internal/ads/zzaet;->zzt(JIIILcom/google/android/gms/internal/ads/zzaes;)V

    .line 747
    .line 748
    .line 749
    :cond_25
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzo:Ljava/util/ArrayDeque;

    .line 750
    .line 751
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 752
    .line 753
    .line 754
    move-result v2

    .line 755
    if-nez v2, :cond_27

    .line 756
    .line 757
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 758
    .line 759
    .line 760
    move-result-object v1

    .line 761
    check-cast v1, Lcom/google/android/gms/internal/ads/zzait;

    .line 762
    .line 763
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzx:I

    .line 764
    .line 765
    iget v7, v1, Lcom/google/android/gms/internal/ads/zzait;->zzc:I

    .line 766
    .line 767
    sub-int/2addr v2, v7

    .line 768
    iput v2, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzx:I

    .line 769
    .line 770
    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/zzait;->zza:J

    .line 771
    .line 772
    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzait;->zzb:Z

    .line 773
    .line 774
    if-eqz v1, :cond_26

    .line 775
    .line 776
    add-long v2, v2, v20

    .line 777
    .line 778
    :cond_26
    move-wide v4, v2

    .line 779
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzI:[Lcom/google/android/gms/internal/ads/zzaet;

    .line 780
    .line 781
    array-length v2, v1

    .line 782
    const/4 v10, 0x0

    .line 783
    :goto_15
    if-ge v10, v2, :cond_25

    .line 784
    .line 785
    aget-object v3, v1, v10

    .line 786
    .line 787
    iget v8, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzx:I

    .line 788
    .line 789
    const/4 v9, 0x0

    .line 790
    const/4 v6, 0x1

    .line 791
    invoke-interface/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzaet;->zzt(JIIILcom/google/android/gms/internal/ads/zzaes;)V

    .line 792
    .line 793
    .line 794
    const/16 v26, 0x1

    .line 795
    .line 796
    add-int/lit8 v10, v10, 0x1

    .line 797
    .line 798
    goto :goto_15

    .line 799
    :cond_27
    invoke-virtual/range {v28 .. v28}, Lcom/google/android/gms/internal/ads/zzaiu;->zzl()Z

    .line 800
    .line 801
    .line 802
    move-result v1

    .line 803
    if-nez v1, :cond_28

    .line 804
    .line 805
    const/4 v2, 0x0

    .line 806
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzB:Lcom/google/android/gms/internal/ads/zzaiu;

    .line 807
    .line 808
    :cond_28
    const/4 v1, 0x3

    .line 809
    :goto_16
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzr:I

    .line 810
    .line 811
    const/16 v27, 0x0

    .line 812
    .line 813
    return v27

    .line 814
    :cond_29
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzf:Landroid/util/SparseArray;

    .line 815
    .line 816
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 817
    .line 818
    .line 819
    move-result v3

    .line 820
    const/4 v4, 0x0

    .line 821
    const/4 v5, 0x0

    .line 822
    :goto_17
    if-ge v5, v3, :cond_2b

    .line 823
    .line 824
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 825
    .line 826
    .line 827
    move-result-object v8

    .line 828
    check-cast v8, Lcom/google/android/gms/internal/ads/zzaiu;

    .line 829
    .line 830
    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzaiu;->zzb:Lcom/google/android/gms/internal/ads/zzajj;

    .line 831
    .line 832
    iget-boolean v9, v8, Lcom/google/android/gms/internal/ads/zzajj;->zzo:Z

    .line 833
    .line 834
    if-eqz v9, :cond_2a

    .line 835
    .line 836
    iget-wide v8, v8, Lcom/google/android/gms/internal/ads/zzajj;->zzc:J

    .line 837
    .line 838
    cmp-long v10, v8, v6

    .line 839
    .line 840
    if-gez v10, :cond_2a

    .line 841
    .line 842
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 843
    .line 844
    .line 845
    move-result-object v4

    .line 846
    check-cast v4, Lcom/google/android/gms/internal/ads/zzaiu;

    .line 847
    .line 848
    move-wide v6, v8

    .line 849
    :cond_2a
    const/16 v26, 0x1

    .line 850
    .line 851
    add-int/lit8 v5, v5, 0x1

    .line 852
    .line 853
    goto :goto_17

    .line 854
    :cond_2b
    if-nez v4, :cond_2c

    .line 855
    .line 856
    const/4 v2, 0x3

    .line 857
    iput v2, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzr:I

    .line 858
    .line 859
    goto/16 :goto_0

    .line 860
    .line 861
    :cond_2c
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzado;->zzf()J

    .line 862
    .line 863
    .line 864
    move-result-wide v2

    .line 865
    sub-long/2addr v6, v2

    .line 866
    long-to-int v2, v6

    .line 867
    if-ltz v2, :cond_2d

    .line 868
    .line 869
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzado;->zzk(I)V

    .line 870
    .line 871
    .line 872
    iget-object v2, v4, Lcom/google/android/gms/internal/ads/zzaiu;->zzb:Lcom/google/android/gms/internal/ads/zzajj;

    .line 873
    .line 874
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzajj;->zzn:Lcom/google/android/gms/internal/ads/zzek;

    .line 875
    .line 876
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 877
    .line 878
    .line 879
    move-result-object v4

    .line 880
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzek;->zzd()I

    .line 881
    .line 882
    .line 883
    move-result v5

    .line 884
    const/4 v11, 0x0

    .line 885
    invoke-interface {v1, v4, v11, v5}, Lcom/google/android/gms/internal/ads/zzado;->zzi([BII)V

    .line 886
    .line 887
    .line 888
    invoke-virtual {v3, v11}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 889
    .line 890
    .line 891
    iput-boolean v11, v2, Lcom/google/android/gms/internal/ads/zzajj;->zzo:Z

    .line 892
    .line 893
    goto/16 :goto_0

    .line 894
    .line 895
    :cond_2d
    const-string v1, "Offset to encryption data was negative."

    .line 896
    .line 897
    const/4 v2, 0x0

    .line 898
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 899
    .line 900
    .line 901
    move-result-object v1

    .line 902
    throw v1

    .line 903
    :cond_2e
    move/from16 p2, v8

    .line 904
    .line 905
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzt:J

    .line 906
    .line 907
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzu:I

    .line 908
    .line 909
    int-to-long v4, v4

    .line 910
    sub-long/2addr v2, v4

    .line 911
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzv:Lcom/google/android/gms/internal/ads/zzek;

    .line 912
    .line 913
    long-to-int v2, v2

    .line 914
    if-eqz v4, :cond_3a

    .line 915
    .line 916
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 917
    .line 918
    .line 919
    move-result-object v3

    .line 920
    invoke-interface {v1, v3, v9, v2}, Lcom/google/android/gms/internal/ads/zzado;->zzi([BII)V

    .line 921
    .line 922
    .line 923
    new-instance v2, Lcom/google/android/gms/internal/ads/zzfa;

    .line 924
    .line 925
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzs:I

    .line 926
    .line 927
    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzfa;-><init>(ILcom/google/android/gms/internal/ads/zzek;)V

    .line 928
    .line 929
    .line 930
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzado;->zzf()J

    .line 931
    .line 932
    .line 933
    move-result-wide v3

    .line 934
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzn:Ljava/util/ArrayDeque;

    .line 935
    .line 936
    invoke-virtual {v5}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 937
    .line 938
    .line 939
    move-result v8

    .line 940
    if-nez v8, :cond_2f

    .line 941
    .line 942
    invoke-virtual {v5}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 943
    .line 944
    .line 945
    move-result-object v3

    .line 946
    check-cast v3, Lcom/google/android/gms/internal/ads/zzez;

    .line 947
    .line 948
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzez;->zzd(Lcom/google/android/gms/internal/ads/zzfa;)V

    .line 949
    .line 950
    .line 951
    goto/16 :goto_1f

    .line 952
    .line 953
    :cond_2f
    iget v5, v2, Lcom/google/android/gms/internal/ads/zzfc;->zzd:I

    .line 954
    .line 955
    if-ne v5, v7, :cond_33

    .line 956
    .line 957
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfa;->zza:Lcom/google/android/gms/internal/ads/zzek;

    .line 958
    .line 959
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 960
    .line 961
    .line 962
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    .line 963
    .line 964
    .line 965
    move-result v5

    .line 966
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzaip;->zza(I)I

    .line 967
    .line 968
    .line 969
    move-result v5

    .line 970
    const/4 v6, 0x4

    .line 971
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzek;->zzM(I)V

    .line 972
    .line 973
    .line 974
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzu()J

    .line 975
    .line 976
    .line 977
    move-result-wide v11

    .line 978
    if-nez v5, :cond_30

    .line 979
    .line 980
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzu()J

    .line 981
    .line 982
    .line 983
    move-result-wide v5

    .line 984
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzu()J

    .line 985
    .line 986
    .line 987
    move-result-wide v7

    .line 988
    :goto_18
    add-long/2addr v3, v7

    .line 989
    move-wide v7, v5

    .line 990
    goto :goto_19

    .line 991
    :cond_30
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzw()J

    .line 992
    .line 993
    .line 994
    move-result-wide v5

    .line 995
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzw()J

    .line 996
    .line 997
    .line 998
    move-result-wide v7

    .line 999
    goto :goto_18

    .line 1000
    :goto_19
    const-wide/32 v9, 0xf4240

    .line 1001
    .line 1002
    .line 1003
    sget-object v13, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 1004
    .line 1005
    invoke-static/range {v7 .. v13}, Lcom/google/android/gms/internal/ads/zzeu;->zzu(JJJLjava/math/RoundingMode;)J

    .line 1006
    .line 1007
    .line 1008
    move-result-wide v5

    .line 1009
    move/from16 v9, p2

    .line 1010
    .line 1011
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/zzek;->zzM(I)V

    .line 1012
    .line 1013
    .line 1014
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzq()I

    .line 1015
    .line 1016
    .line 1017
    move-result v14

    .line 1018
    new-array v15, v14, [I

    .line 1019
    .line 1020
    new-array v9, v14, [J

    .line 1021
    .line 1022
    new-array v10, v14, [J

    .line 1023
    .line 1024
    new-array v13, v14, [J

    .line 1025
    .line 1026
    move-wide/from16 v19, v5

    .line 1027
    .line 1028
    move-object/from16 v16, v9

    .line 1029
    .line 1030
    const/4 v9, 0x0

    .line 1031
    :goto_1a
    if-ge v9, v14, :cond_32

    .line 1032
    .line 1033
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    .line 1034
    .line 1035
    .line 1036
    move-result v17

    .line 1037
    const/high16 v21, -0x80000000

    .line 1038
    .line 1039
    and-int v21, v17, v21

    .line 1040
    .line 1041
    if-nez v21, :cond_31

    .line 1042
    .line 1043
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzu()J

    .line 1044
    .line 1045
    .line 1046
    move-result-wide v21

    .line 1047
    const v23, 0x7fffffff

    .line 1048
    .line 1049
    .line 1050
    and-int v17, v17, v23

    .line 1051
    .line 1052
    aput v17, v15, v9

    .line 1053
    .line 1054
    aput-wide v3, v16, v9

    .line 1055
    .line 1056
    aput-wide v19, v13, v9

    .line 1057
    .line 1058
    add-long v7, v7, v21

    .line 1059
    .line 1060
    move/from16 v27, v9

    .line 1061
    .line 1062
    move-object/from16 v17, v10

    .line 1063
    .line 1064
    const-wide/32 v9, 0xf4240

    .line 1065
    .line 1066
    .line 1067
    move-object/from16 v19, v13

    .line 1068
    .line 1069
    sget-object v13, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 1070
    .line 1071
    move-wide/from16 v20, v3

    .line 1072
    .line 1073
    move-object/from16 v3, v16

    .line 1074
    .line 1075
    move-object/from16 v4, v17

    .line 1076
    .line 1077
    move-wide/from16 v16, v5

    .line 1078
    .line 1079
    move-object/from16 v5, v19

    .line 1080
    .line 1081
    invoke-static/range {v7 .. v13}, Lcom/google/android/gms/internal/ads/zzeu;->zzu(JJJLjava/math/RoundingMode;)J

    .line 1082
    .line 1083
    .line 1084
    move-result-wide v9

    .line 1085
    aget-wide v22, v5, v27

    .line 1086
    .line 1087
    sub-long v22, v9, v22

    .line 1088
    .line 1089
    aput-wide v22, v4, v27

    .line 1090
    .line 1091
    const/4 v13, 0x4

    .line 1092
    invoke-virtual {v2, v13}, Lcom/google/android/gms/internal/ads/zzek;->zzM(I)V

    .line 1093
    .line 1094
    .line 1095
    aget v6, v15, v27

    .line 1096
    .line 1097
    move/from16 p2, v14

    .line 1098
    .line 1099
    int-to-long v13, v6

    .line 1100
    add-long v13, v20, v13

    .line 1101
    .line 1102
    const/16 v26, 0x1

    .line 1103
    .line 1104
    add-int/lit8 v6, v27, 0x1

    .line 1105
    .line 1106
    move-wide/from16 v19, v9

    .line 1107
    .line 1108
    move-object v10, v4

    .line 1109
    move v9, v6

    .line 1110
    move-wide/from16 v29, v13

    .line 1111
    .line 1112
    move/from16 v14, p2

    .line 1113
    .line 1114
    move-object v13, v5

    .line 1115
    move-wide/from16 v5, v16

    .line 1116
    .line 1117
    move-object/from16 v16, v3

    .line 1118
    .line 1119
    move-wide/from16 v3, v29

    .line 1120
    .line 1121
    goto :goto_1a

    .line 1122
    :cond_31
    const-string v1, "Unhandled indirect reference"

    .line 1123
    .line 1124
    const/4 v2, 0x0

    .line 1125
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 1126
    .line 1127
    .line 1128
    move-result-object v1

    .line 1129
    throw v1

    .line 1130
    :cond_32
    move-object v4, v10

    .line 1131
    move-object/from16 v3, v16

    .line 1132
    .line 1133
    move-wide/from16 v16, v5

    .line 1134
    .line 1135
    move-object v5, v13

    .line 1136
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1137
    .line 1138
    .line 1139
    move-result-object v2

    .line 1140
    new-instance v6, Lcom/google/android/gms/internal/ads/zzadb;

    .line 1141
    .line 1142
    invoke-direct {v6, v15, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzadb;-><init>([I[J[J[J)V

    .line 1143
    .line 1144
    .line 1145
    invoke-static {v2, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 1146
    .line 1147
    .line 1148
    move-result-object v2

    .line 1149
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 1150
    .line 1151
    check-cast v3, Ljava/lang/Long;

    .line 1152
    .line 1153
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 1154
    .line 1155
    .line 1156
    move-result-wide v3

    .line 1157
    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzA:J

    .line 1158
    .line 1159
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzH:Lcom/google/android/gms/internal/ads/zzadq;

    .line 1160
    .line 1161
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 1162
    .line 1163
    check-cast v2, Lcom/google/android/gms/internal/ads/zzaem;

    .line 1164
    .line 1165
    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/zzadq;->zzP(Lcom/google/android/gms/internal/ads/zzaem;)V

    .line 1166
    .line 1167
    .line 1168
    const/4 v3, 0x1

    .line 1169
    iput-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzK:Z

    .line 1170
    .line 1171
    goto/16 :goto_1f

    .line 1172
    .line 1173
    :cond_33
    if-ne v5, v6, :cond_3b

    .line 1174
    .line 1175
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfa;->zza:Lcom/google/android/gms/internal/ads/zzek;

    .line 1176
    .line 1177
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzI:[Lcom/google/android/gms/internal/ads/zzaet;

    .line 1178
    .line 1179
    array-length v3, v3

    .line 1180
    if-eqz v3, :cond_3b

    .line 1181
    .line 1182
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 1183
    .line 1184
    .line 1185
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    .line 1186
    .line 1187
    .line 1188
    move-result v3

    .line 1189
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzaip;->zza(I)I

    .line 1190
    .line 1191
    .line 1192
    move-result v3

    .line 1193
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 1194
    .line 1195
    .line 1196
    .line 1197
    .line 1198
    if-eqz v3, :cond_35

    .line 1199
    .line 1200
    const/4 v6, 0x1

    .line 1201
    if-eq v3, v6, :cond_34

    .line 1202
    .line 1203
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1204
    .line 1205
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1206
    .line 1207
    .line 1208
    const-string v4, "Skipping unsupported emsg version: "

    .line 1209
    .line 1210
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1211
    .line 1212
    .line 1213
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1214
    .line 1215
    .line 1216
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1217
    .line 1218
    .line 1219
    move-result-object v2

    .line 1220
    invoke-static {v12, v2}, Lcom/google/android/gms/internal/ads/zzdx;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    .line 1222
    .line 1223
    goto/16 :goto_1f

    .line 1224
    .line 1225
    :cond_34
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzu()J

    .line 1226
    .line 1227
    .line 1228
    move-result-wide v23

    .line 1229
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzw()J

    .line 1230
    .line 1231
    .line 1232
    move-result-wide v19

    .line 1233
    sget-object v25, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 1234
    .line 1235
    const-wide/32 v21, 0xf4240

    .line 1236
    .line 1237
    .line 1238
    invoke-static/range {v19 .. v25}, Lcom/google/android/gms/internal/ads/zzeu;->zzu(JJJLjava/math/RoundingMode;)J

    .line 1239
    .line 1240
    .line 1241
    move-result-wide v6

    .line 1242
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzu()J

    .line 1243
    .line 1244
    .line 1245
    move-result-wide v19

    .line 1246
    const-wide/16 v21, 0x3e8

    .line 1247
    .line 1248
    invoke-static/range {v19 .. v25}, Lcom/google/android/gms/internal/ads/zzeu;->zzu(JJJLjava/math/RoundingMode;)J

    .line 1249
    .line 1250
    .line 1251
    move-result-wide v8

    .line 1252
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzu()J

    .line 1253
    .line 1254
    .line 1255
    move-result-wide v10

    .line 1256
    const/4 v3, 0x0

    .line 1257
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzek;->zzy(C)Ljava/lang/String;

    .line 1258
    .line 1259
    .line 1260
    move-result-object v12

    .line 1261
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1262
    .line 1263
    .line 1264
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzek;->zzy(C)Ljava/lang/String;

    .line 1265
    .line 1266
    .line 1267
    move-result-object v13

    .line 1268
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1269
    .line 1270
    .line 1271
    move-wide v15, v10

    .line 1272
    move-object v11, v12

    .line 1273
    move-object v12, v13

    .line 1274
    move-wide v13, v8

    .line 1275
    move-wide v8, v4

    .line 1276
    goto :goto_1c

    .line 1277
    :cond_35
    const/4 v3, 0x0

    .line 1278
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzek;->zzy(C)Ljava/lang/String;

    .line 1279
    .line 1280
    .line 1281
    move-result-object v12

    .line 1282
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1283
    .line 1284
    .line 1285
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzek;->zzy(C)Ljava/lang/String;

    .line 1286
    .line 1287
    .line 1288
    move-result-object v13

    .line 1289
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1290
    .line 1291
    .line 1292
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzu()J

    .line 1293
    .line 1294
    .line 1295
    move-result-wide v23

    .line 1296
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzu()J

    .line 1297
    .line 1298
    .line 1299
    move-result-wide v19

    .line 1300
    sget-object v25, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 1301
    .line 1302
    const-wide/32 v21, 0xf4240

    .line 1303
    .line 1304
    .line 1305
    invoke-static/range {v19 .. v25}, Lcom/google/android/gms/internal/ads/zzeu;->zzu(JJJLjava/math/RoundingMode;)J

    .line 1306
    .line 1307
    .line 1308
    move-result-wide v6

    .line 1309
    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzA:J

    .line 1310
    .line 1311
    cmp-long v3, v8, v4

    .line 1312
    .line 1313
    if-eqz v3, :cond_36

    .line 1314
    .line 1315
    add-long/2addr v8, v6

    .line 1316
    goto :goto_1b

    .line 1317
    :cond_36
    move-wide v8, v4

    .line 1318
    :goto_1b
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzu()J

    .line 1319
    .line 1320
    .line 1321
    move-result-wide v19

    .line 1322
    const-wide/16 v21, 0x3e8

    .line 1323
    .line 1324
    invoke-static/range {v19 .. v25}, Lcom/google/android/gms/internal/ads/zzeu;->zzu(JJJLjava/math/RoundingMode;)J

    .line 1325
    .line 1326
    .line 1327
    move-result-wide v10

    .line 1328
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzu()J

    .line 1329
    .line 1330
    .line 1331
    move-result-wide v14

    .line 1332
    move-wide/from16 v29, v8

    .line 1333
    .line 1334
    move-wide v8, v6

    .line 1335
    move-wide/from16 v6, v29

    .line 1336
    .line 1337
    move-wide v15, v14

    .line 1338
    move-wide/from16 v29, v10

    .line 1339
    .line 1340
    move-object v11, v12

    .line 1341
    move-object v12, v13

    .line 1342
    move-wide/from16 v13, v29

    .line 1343
    .line 1344
    :goto_1c
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zza()I

    .line 1345
    .line 1346
    .line 1347
    move-result v3

    .line 1348
    new-array v3, v3, [B

    .line 1349
    .line 1350
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zza()I

    .line 1351
    .line 1352
    .line 1353
    move-result v10

    .line 1354
    move-wide/from16 v19, v4

    .line 1355
    .line 1356
    const/4 v4, 0x0

    .line 1357
    invoke-virtual {v2, v3, v4, v10}, Lcom/google/android/gms/internal/ads/zzek;->zzH([BII)V

    .line 1358
    .line 1359
    .line 1360
    new-instance v10, Lcom/google/android/gms/internal/ads/zzagj;

    .line 1361
    .line 1362
    move-object/from16 v17, v3

    .line 1363
    .line 1364
    invoke-direct/range {v10 .. v17}, Lcom/google/android/gms/internal/ads/zzagj;-><init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V

    .line 1365
    .line 1366
    .line 1367
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzl:Lcom/google/android/gms/internal/ads/zzagk;

    .line 1368
    .line 1369
    new-instance v3, Lcom/google/android/gms/internal/ads/zzek;

    .line 1370
    .line 1371
    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/ads/zzagk;->zza(Lcom/google/android/gms/internal/ads/zzagj;)[B

    .line 1372
    .line 1373
    .line 1374
    move-result-object v2

    .line 1375
    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/zzek;-><init>([B)V

    .line 1376
    .line 1377
    .line 1378
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzek;->zza()I

    .line 1379
    .line 1380
    .line 1381
    move-result v2

    .line 1382
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzI:[Lcom/google/android/gms/internal/ads/zzaet;

    .line 1383
    .line 1384
    array-length v5, v4

    .line 1385
    const/4 v10, 0x0

    .line 1386
    :goto_1d
    if-ge v10, v5, :cond_37

    .line 1387
    .line 1388
    aget-object v11, v4, v10

    .line 1389
    .line 1390
    const/4 v12, 0x0

    .line 1391
    invoke-virtual {v3, v12}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 1392
    .line 1393
    .line 1394
    invoke-interface {v11, v3, v2}, Lcom/google/android/gms/internal/ads/zzaet;->zzr(Lcom/google/android/gms/internal/ads/zzek;I)V

    .line 1395
    .line 1396
    .line 1397
    const/4 v11, 0x1

    .line 1398
    add-int/2addr v10, v11

    .line 1399
    goto :goto_1d

    .line 1400
    :cond_37
    const/4 v11, 0x1

    .line 1401
    cmp-long v3, v6, v19

    .line 1402
    .line 1403
    if-nez v3, :cond_38

    .line 1404
    .line 1405
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzo:Ljava/util/ArrayDeque;

    .line 1406
    .line 1407
    new-instance v4, Lcom/google/android/gms/internal/ads/zzait;

    .line 1408
    .line 1409
    invoke-direct {v4, v8, v9, v11, v2}, Lcom/google/android/gms/internal/ads/zzait;-><init>(JZI)V

    .line 1410
    .line 1411
    .line 1412
    invoke-virtual {v3, v4}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 1413
    .line 1414
    .line 1415
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzx:I

    .line 1416
    .line 1417
    add-int/2addr v3, v2

    .line 1418
    iput v3, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzx:I

    .line 1419
    .line 1420
    goto :goto_1f

    .line 1421
    :cond_38
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzo:Ljava/util/ArrayDeque;

    .line 1422
    .line 1423
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 1424
    .line 1425
    .line 1426
    move-result v4

    .line 1427
    if-nez v4, :cond_39

    .line 1428
    .line 1429
    new-instance v4, Lcom/google/android/gms/internal/ads/zzait;

    .line 1430
    .line 1431
    const/4 v5, 0x0

    .line 1432
    invoke-direct {v4, v6, v7, v5, v2}, Lcom/google/android/gms/internal/ads/zzait;-><init>(JZI)V

    .line 1433
    .line 1434
    .line 1435
    invoke-virtual {v3, v4}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 1436
    .line 1437
    .line 1438
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzx:I

    .line 1439
    .line 1440
    add-int/2addr v3, v2

    .line 1441
    iput v3, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzx:I

    .line 1442
    .line 1443
    goto :goto_1f

    .line 1444
    :cond_39
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzI:[Lcom/google/android/gms/internal/ads/zzaet;

    .line 1445
    .line 1446
    array-length v4, v3

    .line 1447
    const/4 v11, 0x0

    .line 1448
    :goto_1e
    if-ge v11, v4, :cond_3b

    .line 1449
    .line 1450
    aget-object v19, v3, v11

    .line 1451
    .line 1452
    const/16 v24, 0x0

    .line 1453
    .line 1454
    const/16 v25, 0x0

    .line 1455
    .line 1456
    const/16 v22, 0x1

    .line 1457
    .line 1458
    move/from16 v23, v2

    .line 1459
    .line 1460
    move-wide/from16 v20, v6

    .line 1461
    .line 1462
    invoke-interface/range {v19 .. v25}, Lcom/google/android/gms/internal/ads/zzaet;->zzt(JIIILcom/google/android/gms/internal/ads/zzaes;)V

    .line 1463
    .line 1464
    .line 1465
    const/16 v26, 0x1

    .line 1466
    .line 1467
    add-int/lit8 v11, v11, 0x1

    .line 1468
    .line 1469
    goto :goto_1e

    .line 1470
    :cond_3a
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzado;->zzk(I)V

    .line 1471
    .line 1472
    .line 1473
    :cond_3b
    :goto_1f
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzado;->zzf()J

    .line 1474
    .line 1475
    .line 1476
    move-result-wide v2

    .line 1477
    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzaiv;->zzl(J)V

    .line 1478
    .line 1479
    .line 1480
    goto/16 :goto_0

    .line 1481
    .line 1482
    :cond_3c
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzu:I

    .line 1483
    .line 1484
    if-nez v2, :cond_3e

    .line 1485
    .line 1486
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzm:Lcom/google/android/gms/internal/ads/zzek;

    .line 1487
    .line 1488
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 1489
    .line 1490
    .line 1491
    move-result-object v3

    .line 1492
    const/4 v5, 0x0

    .line 1493
    const/4 v11, 0x1

    .line 1494
    invoke-interface {v1, v3, v5, v9, v11}, Lcom/google/android/gms/internal/ads/zzado;->zzn([BIIZ)Z

    .line 1495
    .line 1496
    .line 1497
    move-result v3

    .line 1498
    if-nez v3, :cond_3d

    .line 1499
    .line 1500
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzp:Lcom/google/android/gms/internal/ads/zzfw;

    .line 1501
    .line 1502
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfw;->zzd()V

    .line 1503
    .line 1504
    .line 1505
    const/16 v17, -0x1

    .line 1506
    .line 1507
    return v17

    .line 1508
    :cond_3d
    iput v9, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzu:I

    .line 1509
    .line 1510
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 1511
    .line 1512
    .line 1513
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzu()J

    .line 1514
    .line 1515
    .line 1516
    move-result-wide v3

    .line 1517
    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzt:J

    .line 1518
    .line 1519
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    .line 1520
    .line 1521
    .line 1522
    move-result v2

    .line 1523
    iput v2, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzs:I

    .line 1524
    .line 1525
    :cond_3e
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzt:J

    .line 1526
    .line 1527
    const-wide/16 v4, 0x1

    .line 1528
    .line 1529
    cmp-long v4, v2, v4

    .line 1530
    .line 1531
    if-nez v4, :cond_3f

    .line 1532
    .line 1533
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzm:Lcom/google/android/gms/internal/ads/zzek;

    .line 1534
    .line 1535
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 1536
    .line 1537
    .line 1538
    move-result-object v3

    .line 1539
    invoke-interface {v1, v3, v9, v9}, Lcom/google/android/gms/internal/ads/zzado;->zzi([BII)V

    .line 1540
    .line 1541
    .line 1542
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzu:I

    .line 1543
    .line 1544
    add-int/2addr v3, v9

    .line 1545
    iput v3, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzu:I

    .line 1546
    .line 1547
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzw()J

    .line 1548
    .line 1549
    .line 1550
    move-result-wide v2

    .line 1551
    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzt:J

    .line 1552
    .line 1553
    goto :goto_21

    .line 1554
    :cond_3f
    const-wide/16 v4, 0x0

    .line 1555
    .line 1556
    cmp-long v2, v2, v4

    .line 1557
    .line 1558
    if-nez v2, :cond_42

    .line 1559
    .line 1560
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzado;->zzd()J

    .line 1561
    .line 1562
    .line 1563
    move-result-wide v2

    .line 1564
    const-wide/16 v4, -0x1

    .line 1565
    .line 1566
    cmp-long v8, v2, v4

    .line 1567
    .line 1568
    if-nez v8, :cond_41

    .line 1569
    .line 1570
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzn:Ljava/util/ArrayDeque;

    .line 1571
    .line 1572
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 1573
    .line 1574
    .line 1575
    move-result v3

    .line 1576
    if-nez v3, :cond_40

    .line 1577
    .line 1578
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 1579
    .line 1580
    .line 1581
    move-result-object v2

    .line 1582
    check-cast v2, Lcom/google/android/gms/internal/ads/zzez;

    .line 1583
    .line 1584
    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/zzez;->zza:J

    .line 1585
    .line 1586
    goto :goto_20

    .line 1587
    :cond_40
    move-wide v2, v4

    .line 1588
    :cond_41
    :goto_20
    cmp-long v4, v2, v4

    .line 1589
    .line 1590
    if-eqz v4, :cond_42

    .line 1591
    .line 1592
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzado;->zzf()J

    .line 1593
    .line 1594
    .line 1595
    move-result-wide v4

    .line 1596
    sub-long/2addr v2, v4

    .line 1597
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzu:I

    .line 1598
    .line 1599
    int-to-long v4, v4

    .line 1600
    add-long/2addr v2, v4

    .line 1601
    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzt:J

    .line 1602
    .line 1603
    :cond_42
    :goto_21
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzt:J

    .line 1604
    .line 1605
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzu:I

    .line 1606
    .line 1607
    int-to-long v4, v4

    .line 1608
    cmp-long v2, v2, v4

    .line 1609
    .line 1610
    if-ltz v2, :cond_4f

    .line 1611
    .line 1612
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzado;->zzf()J

    .line 1613
    .line 1614
    .line 1615
    move-result-wide v2

    .line 1616
    sub-long/2addr v2, v4

    .line 1617
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzs:I

    .line 1618
    .line 1619
    const v5, 0x6d646174

    .line 1620
    .line 1621
    .line 1622
    const v8, 0x6d6f6f66

    .line 1623
    .line 1624
    .line 1625
    if-eq v4, v8, :cond_43

    .line 1626
    .line 1627
    if-ne v4, v5, :cond_44

    .line 1628
    .line 1629
    :cond_43
    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzK:Z

    .line 1630
    .line 1631
    if-nez v4, :cond_44

    .line 1632
    .line 1633
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzH:Lcom/google/android/gms/internal/ads/zzadq;

    .line 1634
    .line 1635
    new-instance v10, Lcom/google/android/gms/internal/ads/zzael;

    .line 1636
    .line 1637
    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzz:J

    .line 1638
    .line 1639
    invoke-direct {v10, v11, v12, v2, v3}, Lcom/google/android/gms/internal/ads/zzael;-><init>(JJ)V

    .line 1640
    .line 1641
    .line 1642
    invoke-interface {v4, v10}, Lcom/google/android/gms/internal/ads/zzadq;->zzP(Lcom/google/android/gms/internal/ads/zzaem;)V

    .line 1643
    .line 1644
    .line 1645
    const/4 v11, 0x1

    .line 1646
    iput-boolean v11, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzK:Z

    .line 1647
    .line 1648
    :cond_44
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzs:I

    .line 1649
    .line 1650
    if-ne v4, v8, :cond_45

    .line 1651
    .line 1652
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzf:Landroid/util/SparseArray;

    .line 1653
    .line 1654
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 1655
    .line 1656
    .line 1657
    move-result v10

    .line 1658
    const/4 v11, 0x0

    .line 1659
    :goto_22
    if-ge v11, v10, :cond_45

    .line 1660
    .line 1661
    invoke-virtual {v4, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 1662
    .line 1663
    .line 1664
    move-result-object v12

    .line 1665
    check-cast v12, Lcom/google/android/gms/internal/ads/zzaiu;

    .line 1666
    .line 1667
    iget-object v12, v12, Lcom/google/android/gms/internal/ads/zzaiu;->zzb:Lcom/google/android/gms/internal/ads/zzajj;

    .line 1668
    .line 1669
    iput-wide v2, v12, Lcom/google/android/gms/internal/ads/zzajj;->zzc:J

    .line 1670
    .line 1671
    iput-wide v2, v12, Lcom/google/android/gms/internal/ads/zzajj;->zzb:J

    .line 1672
    .line 1673
    const/16 v26, 0x1

    .line 1674
    .line 1675
    add-int/lit8 v11, v11, 0x1

    .line 1676
    .line 1677
    goto :goto_22

    .line 1678
    :cond_45
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzs:I

    .line 1679
    .line 1680
    if-ne v4, v5, :cond_46

    .line 1681
    .line 1682
    const/4 v5, 0x0

    .line 1683
    iput-object v5, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzB:Lcom/google/android/gms/internal/ads/zzaiu;

    .line 1684
    .line 1685
    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzt:J

    .line 1686
    .line 1687
    add-long/2addr v2, v4

    .line 1688
    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzw:J

    .line 1689
    .line 1690
    const/4 v9, 0x2

    .line 1691
    iput v9, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzr:I

    .line 1692
    .line 1693
    goto/16 :goto_0

    .line 1694
    .line 1695
    :cond_46
    const v2, 0x6d6f6f76

    .line 1696
    .line 1697
    .line 1698
    if-eq v4, v2, :cond_47

    .line 1699
    .line 1700
    const v2, 0x7472616b

    .line 1701
    .line 1702
    .line 1703
    if-eq v4, v2, :cond_47

    .line 1704
    .line 1705
    const v2, 0x6d646961

    .line 1706
    .line 1707
    .line 1708
    if-eq v4, v2, :cond_47

    .line 1709
    .line 1710
    const v2, 0x6d696e66

    .line 1711
    .line 1712
    .line 1713
    if-eq v4, v2, :cond_47

    .line 1714
    .line 1715
    const v2, 0x7374626c

    .line 1716
    .line 1717
    .line 1718
    if-eq v4, v2, :cond_47

    .line 1719
    .line 1720
    if-eq v4, v8, :cond_47

    .line 1721
    .line 1722
    const v2, 0x74726166

    .line 1723
    .line 1724
    .line 1725
    if-eq v4, v2, :cond_47

    .line 1726
    .line 1727
    const v2, 0x6d766578

    .line 1728
    .line 1729
    .line 1730
    if-eq v4, v2, :cond_47

    .line 1731
    .line 1732
    const v2, 0x65647473

    .line 1733
    .line 1734
    .line 1735
    if-ne v4, v2, :cond_48

    .line 1736
    .line 1737
    :cond_47
    const/4 v11, 0x1

    .line 1738
    goto/16 :goto_25

    .line 1739
    .line 1740
    :cond_48
    const v2, 0x68646c72    # 4.3148E24f

    .line 1741
    .line 1742
    .line 1743
    const-wide/32 v10, 0x7fffffff

    .line 1744
    .line 1745
    .line 1746
    if-eq v4, v2, :cond_4b

    .line 1747
    .line 1748
    const v2, 0x6d646864

    .line 1749
    .line 1750
    .line 1751
    if-eq v4, v2, :cond_4b

    .line 1752
    .line 1753
    const v2, 0x6d766864

    .line 1754
    .line 1755
    .line 1756
    if-eq v4, v2, :cond_4b

    .line 1757
    .line 1758
    if-eq v4, v7, :cond_4b

    .line 1759
    .line 1760
    const v2, 0x73747364

    .line 1761
    .line 1762
    .line 1763
    if-eq v4, v2, :cond_4b

    .line 1764
    .line 1765
    const v2, 0x73747473

    .line 1766
    .line 1767
    .line 1768
    if-eq v4, v2, :cond_4b

    .line 1769
    .line 1770
    const v2, 0x63747473

    .line 1771
    .line 1772
    .line 1773
    if-eq v4, v2, :cond_4b

    .line 1774
    .line 1775
    const v2, 0x73747363

    .line 1776
    .line 1777
    .line 1778
    if-eq v4, v2, :cond_4b

    .line 1779
    .line 1780
    const v2, 0x7374737a

    .line 1781
    .line 1782
    .line 1783
    if-eq v4, v2, :cond_4b

    .line 1784
    .line 1785
    const v2, 0x73747a32

    .line 1786
    .line 1787
    .line 1788
    if-eq v4, v2, :cond_4b

    .line 1789
    .line 1790
    const v2, 0x7374636f

    .line 1791
    .line 1792
    .line 1793
    if-eq v4, v2, :cond_4b

    .line 1794
    .line 1795
    const v2, 0x636f3634

    .line 1796
    .line 1797
    .line 1798
    if-eq v4, v2, :cond_4b

    .line 1799
    .line 1800
    const v2, 0x73747373

    .line 1801
    .line 1802
    .line 1803
    if-eq v4, v2, :cond_4b

    .line 1804
    .line 1805
    const v2, 0x74666474

    .line 1806
    .line 1807
    .line 1808
    if-eq v4, v2, :cond_4b

    .line 1809
    .line 1810
    const v2, 0x74666864

    .line 1811
    .line 1812
    .line 1813
    if-eq v4, v2, :cond_4b

    .line 1814
    .line 1815
    const v2, 0x746b6864

    .line 1816
    .line 1817
    .line 1818
    if-eq v4, v2, :cond_4b

    .line 1819
    .line 1820
    const v2, 0x74726578

    .line 1821
    .line 1822
    .line 1823
    if-eq v4, v2, :cond_4b

    .line 1824
    .line 1825
    const v2, 0x7472756e

    .line 1826
    .line 1827
    .line 1828
    if-eq v4, v2, :cond_4b

    .line 1829
    .line 1830
    const v2, 0x70737368    # 3.013775E29f

    .line 1831
    .line 1832
    .line 1833
    if-eq v4, v2, :cond_4b

    .line 1834
    .line 1835
    const v2, 0x7361697a

    .line 1836
    .line 1837
    .line 1838
    if-eq v4, v2, :cond_4b

    .line 1839
    .line 1840
    const v2, 0x7361696f

    .line 1841
    .line 1842
    .line 1843
    if-eq v4, v2, :cond_4b

    .line 1844
    .line 1845
    const v2, 0x73656e63

    .line 1846
    .line 1847
    .line 1848
    if-eq v4, v2, :cond_4b

    .line 1849
    .line 1850
    const v2, 0x75756964

    .line 1851
    .line 1852
    .line 1853
    if-eq v4, v2, :cond_4b

    .line 1854
    .line 1855
    const v2, 0x73626770

    .line 1856
    .line 1857
    .line 1858
    if-eq v4, v2, :cond_4b

    .line 1859
    .line 1860
    const v2, 0x73677064

    .line 1861
    .line 1862
    .line 1863
    if-eq v4, v2, :cond_4b

    .line 1864
    .line 1865
    const v2, 0x656c7374

    .line 1866
    .line 1867
    .line 1868
    if-eq v4, v2, :cond_4b

    .line 1869
    .line 1870
    const v2, 0x6d656864

    .line 1871
    .line 1872
    .line 1873
    if-eq v4, v2, :cond_4b

    .line 1874
    .line 1875
    if-ne v4, v6, :cond_49

    .line 1876
    .line 1877
    goto :goto_24

    .line 1878
    :cond_49
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzt:J

    .line 1879
    .line 1880
    cmp-long v2, v2, v10

    .line 1881
    .line 1882
    if-gtz v2, :cond_4a

    .line 1883
    .line 1884
    const/4 v2, 0x0

    .line 1885
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzv:Lcom/google/android/gms/internal/ads/zzek;

    .line 1886
    .line 1887
    const/4 v11, 0x1

    .line 1888
    iput v11, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzr:I

    .line 1889
    .line 1890
    :goto_23
    move v3, v11

    .line 1891
    goto/16 :goto_1

    .line 1892
    .line 1893
    :cond_4a
    const-string v1, "Skipping atom with length > 2147483647 (unsupported)."

    .line 1894
    .line 1895
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaz;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 1896
    .line 1897
    .line 1898
    move-result-object v1

    .line 1899
    throw v1

    .line 1900
    :cond_4b
    :goto_24
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzu:I

    .line 1901
    .line 1902
    if-ne v2, v9, :cond_4d

    .line 1903
    .line 1904
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzt:J

    .line 1905
    .line 1906
    cmp-long v2, v2, v10

    .line 1907
    .line 1908
    if-gtz v2, :cond_4c

    .line 1909
    .line 1910
    new-instance v2, Lcom/google/android/gms/internal/ads/zzek;

    .line 1911
    .line 1912
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzt:J

    .line 1913
    .line 1914
    long-to-int v3, v3

    .line 1915
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzek;-><init>(I)V

    .line 1916
    .line 1917
    .line 1918
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzm:Lcom/google/android/gms/internal/ads/zzek;

    .line 1919
    .line 1920
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 1921
    .line 1922
    .line 1923
    move-result-object v3

    .line 1924
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 1925
    .line 1926
    .line 1927
    move-result-object v4

    .line 1928
    const/4 v5, 0x0

    .line 1929
    invoke-static {v3, v5, v4, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1930
    .line 1931
    .line 1932
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzv:Lcom/google/android/gms/internal/ads/zzek;

    .line 1933
    .line 1934
    const/4 v11, 0x1

    .line 1935
    iput v11, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzr:I

    .line 1936
    .line 1937
    goto :goto_23

    .line 1938
    :cond_4c
    const-string v1, "Leaf atom with length > 2147483647 (unsupported)."

    .line 1939
    .line 1940
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaz;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 1941
    .line 1942
    .line 1943
    move-result-object v1

    .line 1944
    throw v1

    .line 1945
    :cond_4d
    const-string v1, "Leaf atom defines extended atom size (unsupported)."

    .line 1946
    .line 1947
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaz;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 1948
    .line 1949
    .line 1950
    move-result-object v1

    .line 1951
    throw v1

    .line 1952
    :goto_25
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzado;->zzf()J

    .line 1953
    .line 1954
    .line 1955
    move-result-wide v2

    .line 1956
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzt:J

    .line 1957
    .line 1958
    add-long/2addr v2, v5

    .line 1959
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzn:Ljava/util/ArrayDeque;

    .line 1960
    .line 1961
    new-instance v6, Lcom/google/android/gms/internal/ads/zzez;

    .line 1962
    .line 1963
    const-wide/16 v7, -0x8

    .line 1964
    .line 1965
    add-long/2addr v2, v7

    .line 1966
    invoke-direct {v6, v4, v2, v3}, Lcom/google/android/gms/internal/ads/zzez;-><init>(IJ)V

    .line 1967
    .line 1968
    .line 1969
    invoke-virtual {v5, v6}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 1970
    .line 1971
    .line 1972
    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzt:J

    .line 1973
    .line 1974
    iget v6, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzu:I

    .line 1975
    .line 1976
    int-to-long v6, v6

    .line 1977
    cmp-long v4, v4, v6

    .line 1978
    .line 1979
    if-nez v4, :cond_4e

    .line 1980
    .line 1981
    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzaiv;->zzl(J)V

    .line 1982
    .line 1983
    .line 1984
    goto :goto_23

    .line 1985
    :cond_4e
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaiv;->zzj()V

    .line 1986
    .line 1987
    .line 1988
    goto :goto_23

    .line 1989
    :cond_4f
    const-string v1, "Atom size less than header length (unsupported)."

    .line 1990
    .line 1991
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaz;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 1992
    .line 1993
    .line 1994
    move-result-object v1

    .line 1995
    throw v1
.end method

.method public final synthetic zzc()Lcom/google/android/gms/internal/ads/zzadn;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final synthetic zzd()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzq:Lcom/google/android/gms/internal/ads/zzfyc;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzadq;)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzd:I

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x20

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzc:Lcom/google/android/gms/internal/ads/zzakj;

    .line 8
    .line 9
    new-instance v2, Lcom/google/android/gms/internal/ads/zzakm;

    .line 10
    .line 11
    invoke-direct {v2, p1, v1}, Lcom/google/android/gms/internal/ads/zzakm;-><init>(Lcom/google/android/gms/internal/ads/zzadq;Lcom/google/android/gms/internal/ads/zzakj;)V

    .line 12
    .line 13
    .line 14
    move-object p1, v2

    .line 15
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzH:Lcom/google/android/gms/internal/ads/zzadq;

    .line 16
    .line 17
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaiv;->zzj()V

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x2

    .line 21
    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzaet;

    .line 22
    .line 23
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzI:[Lcom/google/android/gms/internal/ads/zzaet;

    .line 24
    .line 25
    and-int/lit8 v0, v0, 0x4

    .line 26
    .line 27
    const/16 v1, 0x64

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzH:Lcom/google/android/gms/internal/ads/zzadq;

    .line 33
    .line 34
    const/4 v3, 0x5

    .line 35
    invoke-interface {v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzadq;->zzw(II)Lcom/google/android/gms/internal/ads/zzaet;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    aput-object v0, p1, v2

    .line 40
    .line 41
    const/4 p1, 0x1

    .line 42
    const/16 v1, 0x65

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    move p1, v2

    .line 46
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzI:[Lcom/google/android/gms/internal/ads/zzaet;

    .line 47
    .line 48
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzeu;->zzQ([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, [Lcom/google/android/gms/internal/ads/zzaet;

    .line 53
    .line 54
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzI:[Lcom/google/android/gms/internal/ads/zzaet;

    .line 55
    .line 56
    array-length v0, p1

    .line 57
    move v3, v2

    .line 58
    :goto_1
    if-ge v3, v0, :cond_2

    .line 59
    .line 60
    aget-object v4, p1, v3

    .line 61
    .line 62
    sget-object v5, Lcom/google/android/gms/internal/ads/zzaiv;->zzb:Lcom/google/android/gms/internal/ads/zzz;

    .line 63
    .line 64
    invoke-interface {v4, v5}, Lcom/google/android/gms/internal/ads/zzaet;->zzm(Lcom/google/android/gms/internal/ads/zzz;)V

    .line 65
    .line 66
    .line 67
    add-int/lit8 v3, v3, 0x1

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zze:Ljava/util/List;

    .line 71
    .line 72
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzaet;

    .line 77
    .line 78
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzJ:[Lcom/google/android/gms/internal/ads/zzaet;

    .line 79
    .line 80
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzJ:[Lcom/google/android/gms/internal/ads/zzaet;

    .line 81
    .line 82
    array-length v0, v0

    .line 83
    if-ge v2, v0, :cond_3

    .line 84
    .line 85
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzH:Lcom/google/android/gms/internal/ads/zzadq;

    .line 86
    .line 87
    add-int/lit8 v3, v1, 0x1

    .line 88
    .line 89
    const/4 v4, 0x3

    .line 90
    invoke-interface {v0, v1, v4}, Lcom/google/android/gms/internal/ads/zzadq;->zzw(II)Lcom/google/android/gms/internal/ads/zzaet;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    check-cast v1, Lcom/google/android/gms/internal/ads/zzz;

    .line 99
    .line 100
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzaet;->zzm(Lcom/google/android/gms/internal/ads/zzz;)V

    .line 101
    .line 102
    .line 103
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzJ:[Lcom/google/android/gms/internal/ads/zzaet;

    .line 104
    .line 105
    aput-object v0, v1, v2

    .line 106
    .line 107
    add-int/lit8 v2, v2, 0x1

    .line 108
    .line 109
    move v1, v3

    .line 110
    goto :goto_2

    .line 111
    :cond_3
    return-void
.end method

.method public final zzf(JJ)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzf:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    const/4 v0, 0x0

    .line 8
    move v1, v0

    .line 9
    :goto_0
    if-ge v1, p2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Lcom/google/android/gms/internal/ads/zzaiu;

    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzaiu;->zzi()V

    .line 18
    .line 19
    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzo:Ljava/util/ArrayDeque;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    .line 26
    .line 27
    .line 28
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzx:I

    .line 29
    .line 30
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzp:Lcom/google/android/gms/internal/ads/zzfw;

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfw;->zzc()V

    .line 33
    .line 34
    .line 35
    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzy:J

    .line 36
    .line 37
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzn:Ljava/util/ArrayDeque;

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    .line 40
    .line 41
    .line 42
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaiv;->zzj()V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzado;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzajg;->zza(Lcom/google/android/gms/internal/ads/zzado;)Lcom/google/android/gms/internal/ads/zzaeq;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfyc;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfyc;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfyc;->zzn()Lcom/google/android/gms/internal/ads/zzfyc;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzq:Lcom/google/android/gms/internal/ads/zzfyc;

    .line 17
    .line 18
    if-nez p1, :cond_1

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    return p1

    .line 22
    :cond_1
    const/4 p1, 0x0

    .line 23
    return p1
.end method
