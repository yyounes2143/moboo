.class final Lcom/google/android/gms/internal/ads/zzgwy;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field public zza:I

.field public zzb:J

.field public zzc:Ljava/lang/Object;

.field public final zzd:Lcom/google/android/gms/internal/ads/zzgyc;

.field public zze:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/google/android/gms/internal/ads/zzgyc;->zzb:I

    .line 2
    sget v0, Lcom/google/android/gms/internal/ads/zzhan;->zza:I

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgyc;->zza:Lcom/google/android/gms/internal/ads/zzgyc;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgwy;->zzd:Lcom/google/android/gms/internal/ads/zzgyc;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgyc;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgwy;->zzd:Lcom/google/android/gms/internal/ads/zzgyc;

    return-void
.end method
