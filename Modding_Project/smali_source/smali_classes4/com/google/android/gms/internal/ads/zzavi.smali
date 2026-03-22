.class public final Lcom/google/android/gms/internal/ads/zzavi;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field final zza:Z

.field final zzb:Ljava/lang/String;

.field final zzc:Lcom/google/android/gms/internal/ads/zzasg;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaro;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaro;->zzf()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzavi;->zzb:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaro;->zzi()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzavi;->zza:Z

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaro;->zzc()Lcom/google/android/gms/internal/ads/zzasg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzavi;->zzc:Lcom/google/android/gms/internal/ads/zzasg;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaro;->zzd()Lcom/google/android/gms/internal/ads/zzasj;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzavi;->zzb:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzavi;->zza:Z

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzasg;->zzc()Lcom/google/android/gms/internal/ads/zzasg;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzavi;->zzc:Lcom/google/android/gms/internal/ads/zzasg;

    .line 6
    sget p1, Lcom/google/android/gms/internal/ads/zzasj;->zza:I

    return-void
.end method
