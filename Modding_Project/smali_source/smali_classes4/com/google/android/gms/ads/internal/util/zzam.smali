.class public final synthetic Lcom/google/android/gms/ads/internal/util/zzam;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/ads/internal/util/zzau;

.field public final synthetic zzb:I

.field public final synthetic zzc:I

.field public final synthetic zzd:I

.field public final synthetic zze:I

.field public final synthetic zzf:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/ads/internal/util/zzau;IIIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzam;->zza:Lcom/google/android/gms/ads/internal/util/zzau;

    .line 5
    .line 6
    iput p2, p0, Lcom/google/android/gms/ads/internal/util/zzam;->zzb:I

    .line 7
    .line 8
    iput p3, p0, Lcom/google/android/gms/ads/internal/util/zzam;->zzc:I

    .line 9
    .line 10
    iput p4, p0, Lcom/google/android/gms/ads/internal/util/zzam;->zzd:I

    .line 11
    .line 12
    iput p5, p0, Lcom/google/android/gms/ads/internal/util/zzam;->zze:I

    .line 13
    .line 14
    iput p6, p0, Lcom/google/android/gms/ads/internal/util/zzam;->zzf:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzam;->zza:Lcom/google/android/gms/ads/internal/util/zzau;

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/gms/ads/internal/util/zzam;->zzb:I

    .line 4
    .line 5
    iget v2, p0, Lcom/google/android/gms/ads/internal/util/zzam;->zzc:I

    .line 6
    .line 7
    iget v3, p0, Lcom/google/android/gms/ads/internal/util/zzam;->zzd:I

    .line 8
    .line 9
    iget v4, p0, Lcom/google/android/gms/ads/internal/util/zzam;->zze:I

    .line 10
    .line 11
    iget v5, p0, Lcom/google/android/gms/ads/internal/util/zzam;->zzf:I

    .line 12
    .line 13
    move-object v6, p1

    .line 14
    move v7, p2

    .line 15
    invoke-static/range {v0 .. v7}, Lcom/google/android/gms/ads/internal/util/zzau;->zzc(Lcom/google/android/gms/ads/internal/util/zzau;IIIIILandroid/content/DialogInterface;I)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
