.class public final Lcom/google/android/engage/common/datamodel/Image;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/engage/common/datamodel/Image$Builder;
    }
.end annotation


# instance fields
.field private final zza:Landroid/net/Uri;

.field private final zzb:I

.field private final zzc:I

.field private final zzd:Ljava/lang/String;

.field private final zze:I

.field private final zzf:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/engage/common/datamodel/Image$Builder;Lcom/google/android/engage/common/datamodel/zzx;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/android/engage/common/datamodel/Image$Builder;->zze(Lcom/google/android/engage/common/datamodel/Image$Builder;)Landroid/net/Uri;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    iput-object p2, p0, Lcom/google/android/engage/common/datamodel/Image;->zza:Landroid/net/Uri;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/google/android/engage/common/datamodel/Image$Builder;->zzb(Lcom/google/android/engage/common/datamodel/Image$Builder;)I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    iput p2, p0, Lcom/google/android/engage/common/datamodel/Image;->zzb:I

    .line 15
    .line 16
    invoke-static {p1}, Lcom/google/android/engage/common/datamodel/Image$Builder;->zzd(Lcom/google/android/engage/common/datamodel/Image$Builder;)I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    iput p2, p0, Lcom/google/android/engage/common/datamodel/Image;->zzc:I

    .line 21
    .line 22
    invoke-static {p1}, Lcom/google/android/engage/common/datamodel/Image$Builder;->zzf(Lcom/google/android/engage/common/datamodel/Image$Builder;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    iput-object p2, p0, Lcom/google/android/engage/common/datamodel/Image;->zzd:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {p1}, Lcom/google/android/engage/common/datamodel/Image$Builder;->zzc(Lcom/google/android/engage/common/datamodel/Image$Builder;)I

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    iput p2, p0, Lcom/google/android/engage/common/datamodel/Image;->zze:I

    .line 33
    .line 34
    invoke-static {p1}, Lcom/google/android/engage/common/datamodel/Image$Builder;->zza(Lcom/google/android/engage/common/datamodel/Image$Builder;)I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    iput p1, p0, Lcom/google/android/engage/common/datamodel/Image;->zzf:I

    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method public getAccessibilityText()Lcom/google/common/base/Optional;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/Image;->zzd:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method public getImageCropType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/engage/common/datamodel/Image;->zzf:I

    .line 2
    .line 3
    return v0
.end method

.method public getImageHeightInPixel()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/engage/common/datamodel/Image;->zzb:I

    .line 2
    .line 3
    return v0
.end method

.method public getImageTheme()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/engage/common/datamodel/Image;->zze:I

    .line 2
    .line 3
    return v0
.end method

.method public getImageUri()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/Image;->zza:Landroid/net/Uri;

    .line 2
    .line 3
    return-object v0
.end method

.method public getImageWidthInPixel()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/engage/common/datamodel/Image;->zzc:I

    .line 2
    .line 3
    return v0
.end method

.method public final zza()Landroid/os/Bundle;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/engage/common/datamodel/Image;->zza:Landroid/net/Uri;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    const-string v2, "A"

    .line 11
    .line 12
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget v1, p0, Lcom/google/android/engage/common/datamodel/Image;->zzb:I

    .line 16
    .line 17
    const-string v2, "B"

    .line 18
    .line 19
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    iget v1, p0, Lcom/google/android/engage/common/datamodel/Image;->zzc:I

    .line 23
    .line 24
    const-string v2, "C"

    .line 25
    .line 26
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    iget v1, p0, Lcom/google/android/engage/common/datamodel/Image;->zze:I

    .line 30
    .line 31
    const-string v2, "E"

    .line 32
    .line 33
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 34
    .line 35
    .line 36
    iget v1, p0, Lcom/google/android/engage/common/datamodel/Image;->zzf:I

    .line 37
    .line 38
    const-string v2, "F"

    .line 39
    .line 40
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lcom/google/android/engage/common/datamodel/Image;->zzd:Ljava/lang/String;

    .line 44
    .line 45
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-nez v2, :cond_1

    .line 50
    .line 51
    const-string v2, "D"

    .line 52
    .line 53
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    return-object v0
.end method
