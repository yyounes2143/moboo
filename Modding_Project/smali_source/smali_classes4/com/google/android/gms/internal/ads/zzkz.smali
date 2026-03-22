.class public final synthetic Lcom/google/android/gms/internal/ads/zzkz;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzla;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfxz;

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzvb;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzla;Lcom/google/android/gms/internal/ads/zzfxz;Lcom/google/android/gms/internal/ads/zzvb;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzkz;->zza:Lcom/google/android/gms/internal/ads/zzla;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzkz;->zzb:Lcom/google/android/gms/internal/ads/zzfxz;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzkz;->zzc:Lcom/google/android/gms/internal/ads/zzvb;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkz;->zza:Lcom/google/android/gms/internal/ads/zzla;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkz;->zzb:Lcom/google/android/gms/internal/ads/zzfxz;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkz;->zzc:Lcom/google/android/gms/internal/ads/zzvb;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzla;->zzr(Lcom/google/android/gms/internal/ads/zzla;Lcom/google/android/gms/internal/ads/zzfxz;Lcom/google/android/gms/internal/ads/zzvb;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
