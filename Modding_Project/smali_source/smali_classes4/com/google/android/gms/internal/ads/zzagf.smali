.class final Lcom/google/android/gms/internal/ads/zzagf;
.super Lcom/google/android/gms/internal/ads/zzaea;
.source "Proguard"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzaem;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzagg;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzagg;Lcom/google/android/gms/internal/ads/zzaem;Lcom/google/android/gms/internal/ads/zzaem;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzagf;->zza:Lcom/google/android/gms/internal/ads/zzaem;

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzagf;->zzb:Lcom/google/android/gms/internal/ads/zzagg;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzaea;-><init>(Lcom/google/android/gms/internal/ads/zzaem;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final zzg(J)Lcom/google/android/gms/internal/ads/zzaek;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagf;->zza:Lcom/google/android/gms/internal/ads/zzaem;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaem;->zzg(J)Lcom/google/android/gms/internal/ads/zzaek;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzaek;->zza:Lcom/google/android/gms/internal/ads/zzaen;

    .line 8
    .line 9
    iget-wide v0, p2, Lcom/google/android/gms/internal/ads/zzaen;->zzc:J

    .line 10
    .line 11
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzagf;->zzb:Lcom/google/android/gms/internal/ads/zzagg;

    .line 12
    .line 13
    new-instance v3, Lcom/google/android/gms/internal/ads/zzaek;

    .line 14
    .line 15
    new-instance v4, Lcom/google/android/gms/internal/ads/zzaen;

    .line 16
    .line 17
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzagg;->zza(Lcom/google/android/gms/internal/ads/zzagg;)J

    .line 18
    .line 19
    .line 20
    move-result-wide v5

    .line 21
    add-long/2addr v0, v5

    .line 22
    iget-wide v5, p2, Lcom/google/android/gms/internal/ads/zzaen;->zzb:J

    .line 23
    .line 24
    invoke-direct {v4, v5, v6, v0, v1}, Lcom/google/android/gms/internal/ads/zzaen;-><init>(JJ)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzaek;->zzb:Lcom/google/android/gms/internal/ads/zzaen;

    .line 28
    .line 29
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzaen;->zzc:J

    .line 30
    .line 31
    new-instance p2, Lcom/google/android/gms/internal/ads/zzaen;

    .line 32
    .line 33
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzagg;->zza(Lcom/google/android/gms/internal/ads/zzagg;)J

    .line 34
    .line 35
    .line 36
    move-result-wide v5

    .line 37
    add-long/2addr v0, v5

    .line 38
    iget-wide v5, p1, Lcom/google/android/gms/internal/ads/zzaen;->zzb:J

    .line 39
    .line 40
    invoke-direct {p2, v5, v6, v0, v1}, Lcom/google/android/gms/internal/ads/zzaen;-><init>(JJ)V

    .line 41
    .line 42
    .line 43
    invoke-direct {v3, v4, p2}, Lcom/google/android/gms/internal/ads/zzaek;-><init>(Lcom/google/android/gms/internal/ads/zzaen;Lcom/google/android/gms/internal/ads/zzaen;)V

    .line 44
    .line 45
    .line 46
    return-object v3
.end method
