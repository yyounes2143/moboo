.class public final Lcom/google/android/engage/audio/datamodel/GenericAudioEntity;
.super Lcom/google/android/engage/common/datamodel/Entity;
.source "Proguard"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/engage/audio/datamodel/zzc;

.field private final zzb:Landroid/net/Uri;

.field private final zzc:Ljava/lang/Boolean;

.field private final zzd:Ljava/lang/Boolean;

.field private final zze:I

.field private final zzf:Lcom/google/android/engage/common/datamodel/Price;

.field private final zzg:Lcom/google/android/engage/common/datamodel/Rating;

.field private final zzh:Ljava/lang/String;

.field private final zzi:Ljava/lang/String;

.field private final zzj:Lcom/google/common/collect/ImmutableList;

.field private final zzk:Ljava/lang/Boolean;

.field private final zzl:Ljava/lang/Boolean;

.field private final zzm:Ljava/lang/Boolean;

.field private final zzn:Ljava/lang/Boolean;

.field private final zzo:Lcom/google/common/collect/ImmutableList;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;Lcom/google/android/engage/audio/datamodel/zzd;)V
    .locals 2

    .line 1
    const/16 p2, 0x28

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/google/android/engage/common/datamodel/Entity;-><init>(I)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;->zzc(Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;)Lcom/google/android/engage/audio/datamodel/zza;

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
    iput-object v0, p0, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity;->zza:Lcom/google/android/engage/audio/datamodel/zzc;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;->zzb(Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;)Landroid/net/Uri;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    iput-object p2, p0, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity;->zzb:Landroid/net/Uri;

    .line 23
    .line 24
    invoke-static {p1}, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;->zzh(Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;)Ljava/lang/Boolean;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    iput-object p2, p0, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity;->zzc:Ljava/lang/Boolean;

    .line 29
    .line 30
    invoke-static {p1}, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;->zzi(Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;)Ljava/lang/Boolean;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    iput-object p2, p0, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity;->zzd:Ljava/lang/Boolean;

    .line 35
    .line 36
    invoke-static {p1}, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;->zza(Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;)I

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    iput p2, p0, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity;->zze:I

    .line 41
    .line 42
    invoke-static {p1}, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;->zzd(Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;)Lcom/google/android/engage/common/datamodel/Price;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    iput-object p2, p0, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity;->zzf:Lcom/google/android/engage/common/datamodel/Price;

    .line 47
    .line 48
    invoke-static {p1}, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;->zze(Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;)Lcom/google/android/engage/common/datamodel/Rating;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    iput-object p2, p0, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity;->zzg:Lcom/google/android/engage/common/datamodel/Rating;

    .line 53
    .line 54
    invoke-static {p1}, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;->zzn(Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    iput-object p2, p0, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity;->zzh:Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {p1}, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;->zzo(Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    iput-object p2, p0, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity;->zzi:Ljava/lang/String;

    .line 65
    .line 66
    invoke-static {p1}, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;->zzf(Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    invoke-virtual {p2}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    iput-object p2, p0, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity;->zzj:Lcom/google/common/collect/ImmutableList;

    .line 75
    .line 76
    invoke-static {p1}, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;->zzk(Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;)Ljava/lang/Boolean;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    iput-object p2, p0, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity;->zzk:Ljava/lang/Boolean;

    .line 81
    .line 82
    invoke-static {p1}, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;->zzl(Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;)Ljava/lang/Boolean;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    iput-object p2, p0, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity;->zzl:Ljava/lang/Boolean;

    .line 87
    .line 88
    invoke-static {p1}, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;->zzm(Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;)Ljava/lang/Boolean;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    iput-object p2, p0, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity;->zzm:Ljava/lang/Boolean;

    .line 93
    .line 94
    invoke-static {p1}, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;->zzj(Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;)Ljava/lang/Boolean;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    iput-object p2, p0, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity;->zzn:Ljava/lang/Boolean;

    .line 99
    .line 100
    invoke-static {p1}, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;->zzg(Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    iput-object p1, p0, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity;->zzo:Lcom/google/common/collect/ImmutableList;

    .line 109
    .line 110
    return-void
.end method


# virtual methods
.method public getActionUri()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity;->zzb:Landroid/net/Uri;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCallout()Lcom/google/common/base/Optional;
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
    iget-object v0, p0, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity;->zzh:Ljava/lang/String;

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

.method public getCalloutFinePrint()Lcom/google/common/base/Optional;
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
    iget-object v0, p0, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity;->zzi:Ljava/lang/String;

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

.method public getDisplayTimeWindows()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/engage/common/datamodel/DisplayTimeWindow;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity;->zzj:Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
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
    iget-object v0, p0, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity;->zza:Lcom/google/android/engage/audio/datamodel/zzc;

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
    iget-object v0, p0, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity;->zza:Lcom/google/android/engage/audio/datamodel/zzc;

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

.method public getListenNextType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity;->zze:I

    .line 2
    .line 3
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity;->zza:Lcom/google/android/engage/audio/datamodel/zzc;

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
    iget-object v0, p0, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity;->zza:Lcom/google/android/engage/audio/datamodel/zzc;

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

.method public getPrice()Lcom/google/common/base/Optional;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional<",
            "Lcom/google/android/engage/common/datamodel/Price;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity;->zzf:Lcom/google/android/engage/common/datamodel/Price;

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
    iget-object v0, p0, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity;->zza:Lcom/google/android/engage/audio/datamodel/zzc;

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

.method public getRating()Lcom/google/common/base/Optional;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional<",
            "Lcom/google/android/engage/common/datamodel/Rating;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity;->zzg:Lcom/google/android/engage/common/datamodel/Rating;

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

.method public getSubtitleList()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity;->zzo:Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    return-object v0
.end method

.method public isArtist()Lcom/google/common/base/Optional;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity;->zzn:Ljava/lang/Boolean;

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

.method public isBook()Lcom/google/common/base/Optional;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity;->zzk:Ljava/lang/Boolean;

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

.method public isDownloadedOnDevice()Lcom/google/common/base/Optional;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity;->zzc:Ljava/lang/Boolean;

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

.method public isExplicitContent()Lcom/google/common/base/Optional;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity;->zzd:Ljava/lang/Boolean;

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

.method public isTalk()Lcom/google/common/base/Optional;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity;->zzl:Ljava/lang/Boolean;

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

.method public isVideoSupported()Lcom/google/common/base/Optional;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity;->zzm:Ljava/lang/Boolean;

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

.method public toBundle()Landroid/os/Bundle;
    .locals 7
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/google/android/engage/common/datamodel/Entity;->toBundle()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity;->zza:Lcom/google/android/engage/audio/datamodel/zzc;

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
    iget-object v1, p0, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity;->zzb:Landroid/net/Uri;

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
    iget-object v1, p0, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity;->zzc:Ljava/lang/Boolean;

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    const-string v2, "C"

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 36
    .line 37
    .line 38
    :cond_1
    iget-object v1, p0, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity;->zzd:Ljava/lang/Boolean;

    .line 39
    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    const-string v2, "D"

    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 49
    .line 50
    .line 51
    :cond_2
    iget v1, p0, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity;->zze:I

    .line 52
    .line 53
    const-string v2, "G"

    .line 54
    .line 55
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity;->zzf:Lcom/google/android/engage/common/datamodel/Price;

    .line 59
    .line 60
    if-eqz v1, :cond_3

    .line 61
    .line 62
    const-string v2, "H"

    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/google/android/engage/common/datamodel/Price;->zza()Landroid/os/Bundle;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 69
    .line 70
    .line 71
    :cond_3
    iget-object v1, p0, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity;->zzg:Lcom/google/android/engage/common/datamodel/Rating;

    .line 72
    .line 73
    if-eqz v1, :cond_4

    .line 74
    .line 75
    const-string v2, "I"

    .line 76
    .line 77
    invoke-virtual {v1}, Lcom/google/android/engage/common/datamodel/Rating;->zza()Landroid/os/Bundle;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 82
    .line 83
    .line 84
    :cond_4
    iget-object v1, p0, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity;->zzh:Ljava/lang/String;

    .line 85
    .line 86
    if-eqz v1, :cond_5

    .line 87
    .line 88
    const-string v2, "J"

    .line 89
    .line 90
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    :cond_5
    iget-object v1, p0, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity;->zzi:Ljava/lang/String;

    .line 94
    .line 95
    if-eqz v1, :cond_6

    .line 96
    .line 97
    const-string v2, "K"

    .line 98
    .line 99
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    :cond_6
    iget-object v1, p0, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity;->zzj:Lcom/google/common/collect/ImmutableList;

    .line 103
    .line 104
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    const/4 v3, 0x0

    .line 109
    if-nez v2, :cond_8

    .line 110
    .line 111
    new-instance v2, Ljava/util/ArrayList;

    .line 112
    .line 113
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .line 115
    .line 116
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    move v5, v3

    .line 121
    :goto_0
    if-ge v5, v4, :cond_7

    .line 122
    .line 123
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v6

    .line 127
    check-cast v6, Lcom/google/android/engage/common/datamodel/DisplayTimeWindow;

    .line 128
    .line 129
    invoke-virtual {v6}, Lcom/google/android/engage/common/datamodel/DisplayTimeWindow;->zza()Landroid/os/Bundle;

    .line 130
    .line 131
    .line 132
    move-result-object v6

    .line 133
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    add-int/lit8 v5, v5, 0x1

    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_7
    const-string v1, "L"

    .line 140
    .line 141
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 142
    .line 143
    .line 144
    :cond_8
    iget-object v1, p0, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity;->zzk:Ljava/lang/Boolean;

    .line 145
    .line 146
    if-eqz v1, :cond_9

    .line 147
    .line 148
    const-string v2, "M"

    .line 149
    .line 150
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 155
    .line 156
    .line 157
    :cond_9
    iget-object v1, p0, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity;->zzl:Ljava/lang/Boolean;

    .line 158
    .line 159
    if-eqz v1, :cond_a

    .line 160
    .line 161
    const-string v2, "N"

    .line 162
    .line 163
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 168
    .line 169
    .line 170
    :cond_a
    iget-object v1, p0, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity;->zzm:Ljava/lang/Boolean;

    .line 171
    .line 172
    if-eqz v1, :cond_b

    .line 173
    .line 174
    const-string v2, "F"

    .line 175
    .line 176
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 181
    .line 182
    .line 183
    :cond_b
    iget-object v1, p0, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity;->zzn:Ljava/lang/Boolean;

    .line 184
    .line 185
    if-eqz v1, :cond_c

    .line 186
    .line 187
    const-string v2, "O"

    .line 188
    .line 189
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 194
    .line 195
    .line 196
    :cond_c
    iget-object v1, p0, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity;->zzo:Lcom/google/common/collect/ImmutableList;

    .line 197
    .line 198
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 199
    .line 200
    .line 201
    move-result v2

    .line 202
    if-nez v2, :cond_d

    .line 203
    .line 204
    new-array v2, v3, [Ljava/lang/String;

    .line 205
    .line 206
    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    check-cast v1, [Ljava/lang/String;

    .line 211
    .line 212
    const-string v2, "E"

    .line 213
    .line 214
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    :cond_d
    return-object v0
.end method
