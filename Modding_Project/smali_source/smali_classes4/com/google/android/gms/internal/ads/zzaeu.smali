.class public final Lcom/google/android/gms/internal/ads/zzaeu;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field private final zza:[B

.field private zzb:Z

.field private zzc:I

.field private zzd:J

.field private zze:I

.field private zzf:I

.field private zzg:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0xa

    .line 5
    .line 6
    new-array v0, v0, [B

    .line 7
    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaeu;->zza:[B

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzaet;Lcom/google/android/gms/internal/ads/zzaes;)V
    .locals 8
    .param p2    # Lcom/google/android/gms/internal/ads/zzaes;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaeu;->zzc:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzaeu;->zzd:J

    .line 6
    .line 7
    iget v4, p0, Lcom/google/android/gms/internal/ads/zzaeu;->zze:I

    .line 8
    .line 9
    iget v5, p0, Lcom/google/android/gms/internal/ads/zzaeu;->zzf:I

    .line 10
    .line 11
    iget v6, p0, Lcom/google/android/gms/internal/ads/zzaeu;->zzg:I

    .line 12
    .line 13
    move-object v1, p1

    .line 14
    move-object v7, p2

    .line 15
    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzaet;->zzt(JIIILcom/google/android/gms/internal/ads/zzaes;)V

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->zzc:I

    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final zzb()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaeu;->zzb:Z

    .line 3
    .line 4
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaeu;->zzc:I

    .line 5
    .line 6
    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzaet;JIIILcom/google/android/gms/internal/ads/zzaes;)V
    .locals 3
    .param p7    # Lcom/google/android/gms/internal/ads/zzaes;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaeu;->zzg:I

    .line 2
    .line 3
    add-int v1, p5, p6

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-gt v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v0, v2

    .line 11
    :goto_0
    const-string v1, "TrueHD chunk samples must be contiguous in the sample queue."

    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdc;->zzg(ZLjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaeu;->zzb:Z

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaeu;->zzc:I

    .line 22
    .line 23
    add-int/lit8 v1, v0, 0x1

    .line 24
    .line 25
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->zzc:I

    .line 26
    .line 27
    if-nez v0, :cond_2

    .line 28
    .line 29
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzaeu;->zzd:J

    .line 30
    .line 31
    iput p4, p0, Lcom/google/android/gms/internal/ads/zzaeu;->zze:I

    .line 32
    .line 33
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzaeu;->zzf:I

    .line 34
    .line 35
    :cond_2
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzaeu;->zzf:I

    .line 36
    .line 37
    add-int/2addr p2, p5

    .line 38
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzaeu;->zzf:I

    .line 39
    .line 40
    iput p6, p0, Lcom/google/android/gms/internal/ads/zzaeu;->zzg:I

    .line 41
    .line 42
    const/16 p2, 0x10

    .line 43
    .line 44
    if-lt v1, p2, :cond_3

    .line 45
    .line 46
    invoke-virtual {p0, p1, p7}, Lcom/google/android/gms/internal/ads/zzaeu;->zza(Lcom/google/android/gms/internal/ads/zzaet;Lcom/google/android/gms/internal/ads/zzaes;)V

    .line 47
    .line 48
    .line 49
    :cond_3
    :goto_1
    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzado;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaeu;->zzb:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaeu;->zza:[B

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/16 v2, 0xa

    .line 10
    .line 11
    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzado;->zzh([BII)V

    .line 12
    .line 13
    .line 14
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzado;->zzj()V

    .line 15
    .line 16
    .line 17
    sget p1, Lcom/google/android/gms/internal/ads/zzacn;->zza:I

    .line 18
    .line 19
    const/4 p1, 0x4

    .line 20
    aget-byte p1, v0, p1

    .line 21
    .line 22
    const/4 v1, -0x8

    .line 23
    if-ne p1, v1, :cond_1

    .line 24
    .line 25
    const/4 p1, 0x5

    .line 26
    aget-byte p1, v0, p1

    .line 27
    .line 28
    const/16 v1, 0x72

    .line 29
    .line 30
    if-ne p1, v1, :cond_1

    .line 31
    .line 32
    const/4 p1, 0x6

    .line 33
    aget-byte p1, v0, p1

    .line 34
    .line 35
    const/16 v1, 0x6f

    .line 36
    .line 37
    if-ne p1, v1, :cond_1

    .line 38
    .line 39
    const/4 p1, 0x7

    .line 40
    aget-byte p1, v0, p1

    .line 41
    .line 42
    and-int/lit16 p1, p1, 0xfe

    .line 43
    .line 44
    const/16 v0, 0xba

    .line 45
    .line 46
    if-ne p1, v0, :cond_1

    .line 47
    .line 48
    const/4 p1, 0x1

    .line 49
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->zzb:Z

    .line 50
    .line 51
    :cond_1
    :goto_0
    return-void
.end method
