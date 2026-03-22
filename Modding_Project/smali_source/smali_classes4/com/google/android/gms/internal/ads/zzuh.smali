.class final Lcom/google/android/gms/internal/ads/zzuh;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzvm;
.implements Lcom/google/android/gms/internal/ads/zzrx;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzuj;

.field private final zzb:Ljava/lang/Object;

.field private zzc:Lcom/google/android/gms/internal/ads/zzvl;

.field private zzd:Lcom/google/android/gms/internal/ads/zzrw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzuj;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzuh;->zza:Lcom/google/android/gms/internal/ads/zzuj;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzua;->zze(Lcom/google/android/gms/internal/ads/zzvb;)Lcom/google/android/gms/internal/ads/zzvl;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzuh;->zzc:Lcom/google/android/gms/internal/ads/zzvl;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzua;->zzc(Lcom/google/android/gms/internal/ads/zzvb;)Lcom/google/android/gms/internal/ads/zzrw;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzuh;->zzd:Lcom/google/android/gms/internal/ads/zzrw;

    .line 18
    .line 19
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzuh;->zzb:Ljava/lang/Object;

    .line 20
    .line 21
    return-void
.end method

.method private final zzf(Lcom/google/android/gms/internal/ads/zzux;Lcom/google/android/gms/internal/ads/zzvb;)Lcom/google/android/gms/internal/ads/zzux;
    .locals 4
    .param p2    # Lcom/google/android/gms/internal/ads/zzvb;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuh;->zza:Lcom/google/android/gms/internal/ads/zzuj;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzuh;->zzb:Ljava/lang/Object;

    .line 4
    .line 5
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzux;->zzc:J

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/google/android/gms/internal/ads/zzuj;->zzx(Ljava/lang/Object;JLcom/google/android/gms/internal/ads/zzvb;)J

    .line 8
    .line 9
    .line 10
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzux;->zzd:J

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/google/android/gms/internal/ads/zzuj;->zzx(Ljava/lang/Object;JLcom/google/android/gms/internal/ads/zzvb;)J

    .line 13
    .line 14
    .line 15
    return-object p1
.end method

.method private final zzg(ILcom/google/android/gms/internal/ads/zzvb;)Z
    .locals 3
    .param p2    # Lcom/google/android/gms/internal/ads/zzvb;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 p1, 0x0

    .line 2
    if-eqz p2, :cond_1

    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuh;->zza:Lcom/google/android/gms/internal/ads/zzuj;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzuh;->zzb:Ljava/lang/Object;

    .line 7
    .line 8
    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzuj;->zzy(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzvb;)Lcom/google/android/gms/internal/ads/zzvb;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    return p1

    .line 16
    :cond_1
    const/4 p2, 0x0

    .line 17
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuh;->zza:Lcom/google/android/gms/internal/ads/zzuj;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzuh;->zzb:Ljava/lang/Object;

    .line 20
    .line 21
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzuj;->zzw(Ljava/lang/Object;I)I

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzuh;->zzc:Lcom/google/android/gms/internal/ads/zzvl;

    .line 25
    .line 26
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzvl;->zza:I

    .line 27
    .line 28
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzvl;->zzb:Lcom/google/android/gms/internal/ads/zzvb;

    .line 29
    .line 30
    invoke-static {v1, p2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_2

    .line 35
    .line 36
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzua;->zzf(ILcom/google/android/gms/internal/ads/zzvb;)Lcom/google/android/gms/internal/ads/zzvl;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzuh;->zzc:Lcom/google/android/gms/internal/ads/zzvl;

    .line 41
    .line 42
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzuh;->zzd:Lcom/google/android/gms/internal/ads/zzrw;

    .line 43
    .line 44
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzrw;->zza:I

    .line 45
    .line 46
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzrw;->zzb:Lcom/google/android/gms/internal/ads/zzvb;

    .line 47
    .line 48
    invoke-static {v1, p2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-nez v1, :cond_3

    .line 53
    .line 54
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzua;->zzd(ILcom/google/android/gms/internal/ads/zzvb;)Lcom/google/android/gms/internal/ads/zzrw;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzuh;->zzd:Lcom/google/android/gms/internal/ads/zzrw;

    .line 59
    .line 60
    :cond_3
    const/4 p1, 0x1

    .line 61
    return p1
.end method


# virtual methods
.method public final zzag(ILcom/google/android/gms/internal/ads/zzvb;Lcom/google/android/gms/internal/ads/zzux;)V
    .locals 0
    .param p2    # Lcom/google/android/gms/internal/ads/zzvb;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzuh;->zzg(ILcom/google/android/gms/internal/ads/zzvb;)Z

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzuh;->zzc:Lcom/google/android/gms/internal/ads/zzvl;

    .line 9
    .line 10
    invoke-direct {p0, p3, p2}, Lcom/google/android/gms/internal/ads/zzuh;->zzf(Lcom/google/android/gms/internal/ads/zzux;Lcom/google/android/gms/internal/ads/zzvb;)Lcom/google/android/gms/internal/ads/zzux;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzvl;->zzd(Lcom/google/android/gms/internal/ads/zzux;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final zzah(ILcom/google/android/gms/internal/ads/zzvb;Lcom/google/android/gms/internal/ads/zzus;Lcom/google/android/gms/internal/ads/zzux;)V
    .locals 0
    .param p2    # Lcom/google/android/gms/internal/ads/zzvb;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzuh;->zzg(ILcom/google/android/gms/internal/ads/zzvb;)Z

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzuh;->zzc:Lcom/google/android/gms/internal/ads/zzvl;

    .line 9
    .line 10
    invoke-direct {p0, p4, p2}, Lcom/google/android/gms/internal/ads/zzuh;->zzf(Lcom/google/android/gms/internal/ads/zzux;Lcom/google/android/gms/internal/ads/zzvb;)Lcom/google/android/gms/internal/ads/zzux;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzvl;->zze(Lcom/google/android/gms/internal/ads/zzus;Lcom/google/android/gms/internal/ads/zzux;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final zzai(ILcom/google/android/gms/internal/ads/zzvb;Lcom/google/android/gms/internal/ads/zzus;Lcom/google/android/gms/internal/ads/zzux;)V
    .locals 0
    .param p2    # Lcom/google/android/gms/internal/ads/zzvb;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzuh;->zzg(ILcom/google/android/gms/internal/ads/zzvb;)Z

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzuh;->zzc:Lcom/google/android/gms/internal/ads/zzvl;

    .line 9
    .line 10
    invoke-direct {p0, p4, p2}, Lcom/google/android/gms/internal/ads/zzuh;->zzf(Lcom/google/android/gms/internal/ads/zzux;Lcom/google/android/gms/internal/ads/zzvb;)Lcom/google/android/gms/internal/ads/zzux;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzvl;->zzf(Lcom/google/android/gms/internal/ads/zzus;Lcom/google/android/gms/internal/ads/zzux;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final zzaj(ILcom/google/android/gms/internal/ads/zzvb;Lcom/google/android/gms/internal/ads/zzus;Lcom/google/android/gms/internal/ads/zzux;Ljava/io/IOException;Z)V
    .locals 0
    .param p2    # Lcom/google/android/gms/internal/ads/zzvb;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzuh;->zzg(ILcom/google/android/gms/internal/ads/zzvb;)Z

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzuh;->zzc:Lcom/google/android/gms/internal/ads/zzvl;

    .line 9
    .line 10
    invoke-direct {p0, p4, p2}, Lcom/google/android/gms/internal/ads/zzuh;->zzf(Lcom/google/android/gms/internal/ads/zzux;Lcom/google/android/gms/internal/ads/zzvb;)Lcom/google/android/gms/internal/ads/zzux;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p3, p4, p5, p6}, Lcom/google/android/gms/internal/ads/zzvl;->zzg(Lcom/google/android/gms/internal/ads/zzus;Lcom/google/android/gms/internal/ads/zzux;Ljava/io/IOException;Z)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final zzak(ILcom/google/android/gms/internal/ads/zzvb;Lcom/google/android/gms/internal/ads/zzus;Lcom/google/android/gms/internal/ads/zzux;I)V
    .locals 0
    .param p2    # Lcom/google/android/gms/internal/ads/zzvb;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzuh;->zzg(ILcom/google/android/gms/internal/ads/zzvb;)Z

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzuh;->zzc:Lcom/google/android/gms/internal/ads/zzvl;

    .line 9
    .line 10
    invoke-direct {p0, p4, p2}, Lcom/google/android/gms/internal/ads/zzuh;->zzf(Lcom/google/android/gms/internal/ads/zzux;Lcom/google/android/gms/internal/ads/zzvb;)Lcom/google/android/gms/internal/ads/zzux;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p3, p4, p5}, Lcom/google/android/gms/internal/ads/zzvl;->zzh(Lcom/google/android/gms/internal/ads/zzus;Lcom/google/android/gms/internal/ads/zzux;I)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method
