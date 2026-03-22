.class public final Lcom/google/android/gms/internal/ads/zzaed;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzek;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzek;

    .line 5
    .line 6
    const/16 v1, 0xa

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzek;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaed;->zza:Lcom/google/android/gms/internal/ads/zzek;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzado;Lcom/google/android/gms/internal/ads/zzagu;)Lcom/google/android/gms/internal/ads/zzav;
    .locals 7
    .param p2    # Lcom/google/android/gms/internal/ads/zzagu;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaed;->zza:Lcom/google/android/gms/internal/ads/zzek;

    .line 5
    .line 6
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 7
    .line 8
    .line 9
    move-result-object v4

    .line 10
    const/16 v5, 0xa

    .line 11
    .line 12
    invoke-interface {p1, v4, v1, v5}, Lcom/google/android/gms/internal/ads/zzado;->zzh([BII)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzek;->zzo()I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    const v6, 0x494433

    .line 23
    .line 24
    .line 25
    if-eq v4, v6, :cond_0

    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_0
    const/4 v4, 0x3

    .line 29
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzek;->zzM(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzek;->zzl()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    add-int/lit8 v6, v4, 0xa

    .line 37
    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    new-array v0, v6, [B

    .line 41
    .line 42
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-static {v3, v1, v0, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    .line 48
    .line 49
    invoke-interface {p1, v0, v5, v4}, Lcom/google/android/gms/internal/ads/zzado;->zzh([BII)V

    .line 50
    .line 51
    .line 52
    new-instance v3, Lcom/google/android/gms/internal/ads/zzagi;

    .line 53
    .line 54
    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzagi;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-static {v0, v6, p2, v3}, Lcom/google/android/gms/internal/ads/zzagw;->zza([BILcom/google/android/gms/internal/ads/zzagu;Lcom/google/android/gms/internal/ads/zzagi;)Lcom/google/android/gms/internal/ads/zzav;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    invoke-interface {p1, v4}, Lcom/google/android/gms/internal/ads/zzado;->zzg(I)V

    .line 63
    .line 64
    .line 65
    :goto_1
    add-int/2addr v2, v6

    .line 66
    goto :goto_0

    .line 67
    :catch_0
    :goto_2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzado;->zzj()V

    .line 68
    .line 69
    .line 70
    invoke-interface {p1, v2}, Lcom/google/android/gms/internal/ads/zzado;->zzg(I)V

    .line 71
    .line 72
    .line 73
    return-object v0
.end method
