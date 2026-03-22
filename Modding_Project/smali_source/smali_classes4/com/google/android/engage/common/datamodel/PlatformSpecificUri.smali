.class public final Lcom/google/android/engage/common/datamodel/PlatformSpecificUri;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/engage/common/datamodel/PlatformSpecificUri$Builder;
    }
.end annotation


# instance fields
.field private final zza:Landroid/net/Uri;

.field private final zzb:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/engage/common/datamodel/PlatformSpecificUri$Builder;Lcom/google/android/engage/common/datamodel/zzae;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/android/engage/common/datamodel/PlatformSpecificUri$Builder;->zzb(Lcom/google/android/engage/common/datamodel/PlatformSpecificUri$Builder;)Landroid/net/Uri;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    iput-object p2, p0, Lcom/google/android/engage/common/datamodel/PlatformSpecificUri;->zza:Landroid/net/Uri;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/google/android/engage/common/datamodel/PlatformSpecificUri$Builder;->zza(Lcom/google/android/engage/common/datamodel/PlatformSpecificUri$Builder;)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iput p1, p0, Lcom/google/android/engage/common/datamodel/PlatformSpecificUri;->zzb:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public getActionUri()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/PlatformSpecificUri;->zza:Landroid/net/Uri;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPlatformType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/engage/common/datamodel/PlatformSpecificUri;->zzb:I

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
    iget-object v1, p0, Lcom/google/android/engage/common/datamodel/PlatformSpecificUri;->zza:Landroid/net/Uri;

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
    iget v1, p0, Lcom/google/android/engage/common/datamodel/PlatformSpecificUri;->zzb:I

    .line 16
    .line 17
    const-string v2, "B"

    .line 18
    .line 19
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method
