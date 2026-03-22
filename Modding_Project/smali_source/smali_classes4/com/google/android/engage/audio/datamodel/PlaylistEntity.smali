.class public final Lcom/google/android/engage/audio/datamodel/PlaylistEntity;
.super Lcom/google/android/engage/common/datamodel/Entity;
.source "Proguard"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/engage/audio/datamodel/PlaylistEntity$Builder;
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/engage/audio/datamodel/zzc;

.field private final zzb:Landroid/net/Uri;

.field private final zzc:Ljava/lang/Integer;

.field private final zzd:Ljava/lang/Long;

.field private final zze:Landroid/net/Uri;

.field private final zzf:Z

.field private final zzg:Z


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/engage/audio/datamodel/PlaylistEntity$Builder;Lcom/google/android/engage/audio/datamodel/zzj;)V
    .locals 2

    .line 1
    const/16 p2, 0x10

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/google/android/engage/common/datamodel/Entity;-><init>(I)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/google/android/engage/audio/datamodel/PlaylistEntity$Builder;->zzc(Lcom/google/android/engage/audio/datamodel/PlaylistEntity$Builder;)Lcom/google/android/engage/audio/datamodel/zza;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    new-instance v0, Lcom/google/android/engage/audio/datamodel/zzc;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-direct {v0, p2, v1}, Lcom/google/android/engage/audio/datamodel/zzc;-><init>(Lcom/google/android/engage/audio/datamodel/zza;Lcom/google/android/engage/audio/datamodel/zzb;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/android/engage/audio/datamodel/PlaylistEntity;->zza:Lcom/google/android/engage/audio/datamodel/zzc;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/google/android/engage/audio/datamodel/PlaylistEntity$Builder;->zzb(Lcom/google/android/engage/audio/datamodel/PlaylistEntity$Builder;)Landroid/net/Uri;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    iput-object p2, p0, Lcom/google/android/engage/audio/datamodel/PlaylistEntity;->zzb:Landroid/net/Uri;

    .line 23
    .line 24
    invoke-static {p1}, Lcom/google/android/engage/audio/datamodel/PlaylistEntity$Builder;->zzd(Lcom/google/android/engage/audio/datamodel/PlaylistEntity$Builder;)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    iput-object p2, p0, Lcom/google/android/engage/audio/datamodel/PlaylistEntity;->zzc:Ljava/lang/Integer;

    .line 29
    .line 30
    invoke-static {p1}, Lcom/google/android/engage/audio/datamodel/PlaylistEntity$Builder;->zze(Lcom/google/android/engage/audio/datamodel/PlaylistEntity$Builder;)Ljava/lang/Long;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    iput-object p2, p0, Lcom/google/android/engage/audio/datamodel/PlaylistEntity;->zzd:Ljava/lang/Long;

    .line 35
    .line 36
    invoke-static {p1}, Lcom/google/android/engage/audio/datamodel/PlaylistEntity$Builder;->zza(Lcom/google/android/engage/audio/datamodel/PlaylistEntity$Builder;)Landroid/net/Uri;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    iput-object p2, p0, Lcom/google/android/engage/audio/datamodel/PlaylistEntity;->zze:Landroid/net/Uri;

    .line 41
    .line 42
    invoke-static {p1}, Lcom/google/android/engage/audio/datamodel/PlaylistEntity$Builder;->zzf(Lcom/google/android/engage/audio/datamodel/PlaylistEntity$Builder;)Z

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    iput-boolean p2, p0, Lcom/google/android/engage/audio/datamodel/PlaylistEntity;->zzf:Z

    .line 47
    .line 48
    invoke-static {p1}, Lcom/google/android/engage/audio/datamodel/PlaylistEntity$Builder;->zzg(Lcom/google/android/engage/audio/datamodel/PlaylistEntity$Builder;)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    iput-boolean p1, p0, Lcom/google/android/engage/audio/datamodel/PlaylistEntity;->zzg:Z

    .line 53
    .line 54
    return-void
.end method


# virtual methods
.method public getDescription()Lcom/google/common/base/Optional;
    .locals 1
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
    iget-object v0, p0, Lcom/google/android/engage/audio/datamodel/PlaylistEntity;->zza:Lcom/google/android/engage/audio/datamodel/zzc;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/engage/audio/datamodel/zzc;->zzb()Lcom/google/common/base/Optional;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getDurationMillis()Lcom/google/common/base/Optional;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/audio/datamodel/PlaylistEntity;->zzd:Ljava/lang/Long;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    const-wide/16 v3, 0x0

    .line 10
    .line 11
    cmp-long v1, v1, v3

    .line 12
    .line 13
    if-lez v1, :cond_0

    .line 14
    .line 15
    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0

    .line 20
    :cond_0
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    return-object v0
.end method

.method public getEntityId()Lcom/google/common/base/Optional;
    .locals 1
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
    iget-object v0, p0, Lcom/google/android/engage/audio/datamodel/PlaylistEntity;->zza:Lcom/google/android/engage/audio/datamodel/zzc;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/engage/audio/datamodel/zzc;->zzc()Lcom/google/common/base/Optional;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getInfoPageUri()Lcom/google/common/base/Optional;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/audio/datamodel/PlaylistEntity;->zze:Landroid/net/Uri;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getLastEngagementTimeMillis()Lcom/google/common/base/Optional;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/audio/datamodel/PlaylistEntity;->zza:Lcom/google/android/engage/audio/datamodel/zzc;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/engage/audio/datamodel/zzc;->zzd()Lcom/google/common/base/Optional;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/audio/datamodel/PlaylistEntity;->zza:Lcom/google/android/engage/audio/datamodel/zzc;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/engage/audio/datamodel/zzc;->zzf()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getPlayBackUri()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/audio/datamodel/PlaylistEntity;->zzb:Landroid/net/Uri;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPosterImages()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/engage/common/datamodel/Image;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/audio/datamodel/PlaylistEntity;->zza:Lcom/google/android/engage/audio/datamodel/zzc;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/engage/audio/datamodel/zzc;->zzg()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getProgressPercentComplete()Lcom/google/common/base/Optional;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/audio/datamodel/PlaylistEntity;->zza:Lcom/google/android/engage/audio/datamodel/zzc;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/engage/audio/datamodel/zzc;->zze()Lcom/google/common/base/Optional;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getSongsCount()Lcom/google/common/base/Optional;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/audio/datamodel/PlaylistEntity;->zzc:Ljava/lang/Integer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-lez v1, :cond_0

    .line 10
    .line 11
    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0

    .line 16
    :cond_0
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method public isDownloadedOnDevice()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/engage/audio/datamodel/PlaylistEntity;->zzf:Z

    .line 2
    .line 3
    return v0
.end method

.method public isExplicitContent()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/engage/audio/datamodel/PlaylistEntity;->zzg:Z

    .line 2
    .line 3
    return v0
.end method

.method public final toBundle()Landroid/os/Bundle;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/google/android/engage/common/datamodel/Entity;->toBundle()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/google/android/engage/audio/datamodel/PlaylistEntity;->zza:Lcom/google/android/engage/audio/datamodel/zzc;

    .line 6
    .line 7
    const-string v2, "A"

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/google/android/engage/audio/datamodel/zzc;->zza()Landroid/os/Bundle;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/google/android/engage/audio/datamodel/PlaylistEntity;->zzb:Landroid/net/Uri;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    const-string v2, "B"

    .line 21
    .line 22
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v1, p0, Lcom/google/android/engage/audio/datamodel/PlaylistEntity;->zze:Landroid/net/Uri;

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    const-string v2, "C"

    .line 30
    .line 31
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    iget-object v1, p0, Lcom/google/android/engage/audio/datamodel/PlaylistEntity;->zzc:Ljava/lang/Integer;

    .line 35
    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    const-string v2, "D"

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 45
    .line 46
    .line 47
    :cond_2
    iget-object v1, p0, Lcom/google/android/engage/audio/datamodel/PlaylistEntity;->zzd:Ljava/lang/Long;

    .line 48
    .line 49
    if-eqz v1, :cond_3

    .line 50
    .line 51
    const-string v2, "E"

    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 54
    .line 55
    .line 56
    move-result-wide v3

    .line 57
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 58
    .line 59
    .line 60
    :cond_3
    iget-boolean v1, p0, Lcom/google/android/engage/audio/datamodel/PlaylistEntity;->zzg:Z

    .line 61
    .line 62
    const-string v2, "F"

    .line 63
    .line 64
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 65
    .line 66
    .line 67
    iget-boolean v1, p0, Lcom/google/android/engage/audio/datamodel/PlaylistEntity;->zzf:Z

    .line 68
    .line 69
    const-string v2, "G"

    .line 70
    .line 71
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 72
    .line 73
    .line 74
    return-object v0
.end method
