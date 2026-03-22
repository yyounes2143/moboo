.class public final synthetic Lcom/google/android/gms/internal/ads/zzvf;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdk;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzvl;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzus;

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzux;

.field public final synthetic zzd:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzvl;Lcom/google/android/gms/internal/ads/zzus;Lcom/google/android/gms/internal/ads/zzux;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvf;->zza:Lcom/google/android/gms/internal/ads/zzvl;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzvf;->zzb:Lcom/google/android/gms/internal/ads/zzus;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzvf;->zzc:Lcom/google/android/gms/internal/ads/zzux;

    .line 9
    .line 10
    iput p4, p0, Lcom/google/android/gms/internal/ads/zzvf;->zzd:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvf;->zza:Lcom/google/android/gms/internal/ads/zzvl;

    .line 2
    .line 3
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzvl;->zzb:Lcom/google/android/gms/internal/ads/zzvb;

    .line 4
    .line 5
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzvf;->zzb:Lcom/google/android/gms/internal/ads/zzus;

    .line 6
    .line 7
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzvf;->zzc:Lcom/google/android/gms/internal/ads/zzux;

    .line 8
    .line 9
    iget v6, p0, Lcom/google/android/gms/internal/ads/zzvf;->zzd:I

    .line 10
    .line 11
    move-object v1, p1

    .line 12
    check-cast v1, Lcom/google/android/gms/internal/ads/zzvm;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzvm;->zzak(ILcom/google/android/gms/internal/ads/zzvb;Lcom/google/android/gms/internal/ads/zzus;Lcom/google/android/gms/internal/ads/zzux;I)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
