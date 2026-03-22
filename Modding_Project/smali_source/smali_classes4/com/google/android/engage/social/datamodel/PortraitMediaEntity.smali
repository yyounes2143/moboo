.class public final Lcom/google/android/engage/social/datamodel/PortraitMediaEntity;
.super Lcom/google/android/engage/common/datamodel/Entity;
.source "Proguard"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/engage/social/datamodel/PortraitMediaEntity$Builder;
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/engage/social/datamodel/zzj;

.field private final zzb:Lcom/google/android/engage/social/datamodel/PortraitMediaPost;

.field private final zzc:Lcom/google/android/engage/social/datamodel/Profile;

.field private final zzd:Lcom/google/android/engage/social/datamodel/Interaction;

.field private final zze:Lcom/google/common/collect/ImmutableList;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/engage/social/datamodel/PortraitMediaEntity$Builder;Lcom/google/android/engage/social/datamodel/zze;)V
    .locals 2

    .line 1
    const/16 p2, 0x18

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/google/android/engage/common/datamodel/Entity;-><init>(I)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/google/android/engage/social/datamodel/PortraitMediaEntity$Builder;->zzd(Lcom/google/android/engage/social/datamodel/PortraitMediaEntity$Builder;)Lcom/google/android/engage/social/datamodel/zzh;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    new-instance v0, Lcom/google/android/engage/social/datamodel/zzj;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-direct {v0, p2, v1}, Lcom/google/android/engage/social/datamodel/zzj;-><init>(Lcom/google/android/engage/social/datamodel/zzh;Lcom/google/android/engage/social/datamodel/zzi;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/android/engage/social/datamodel/PortraitMediaEntity;->zza:Lcom/google/android/engage/social/datamodel/zzj;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/google/android/engage/social/datamodel/PortraitMediaEntity$Builder;->zzb(Lcom/google/android/engage/social/datamodel/PortraitMediaEntity$Builder;)Lcom/google/android/engage/social/datamodel/PortraitMediaPost;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    iput-object p2, p0, Lcom/google/android/engage/social/datamodel/PortraitMediaEntity;->zzb:Lcom/google/android/engage/social/datamodel/PortraitMediaPost;

    .line 23
    .line 24
    invoke-static {p1}, Lcom/google/android/engage/social/datamodel/PortraitMediaEntity$Builder;->zzc(Lcom/google/android/engage/social/datamodel/PortraitMediaEntity$Builder;)Lcom/google/android/engage/social/datamodel/Profile;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    iput-object p2, p0, Lcom/google/android/engage/social/datamodel/PortraitMediaEntity;->zzc:Lcom/google/android/engage/social/datamodel/Profile;

    .line 29
    .line 30
    invoke-static {p1}, Lcom/google/android/engage/social/datamodel/PortraitMediaEntity$Builder;->zza(Lcom/google/android/engage/social/datamodel/PortraitMediaEntity$Builder;)Lcom/google/android/engage/social/datamodel/Interaction;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    iput-object p2, p0, Lcom/google/android/engage/social/datamodel/PortraitMediaEntity;->zzd:Lcom/google/android/engage/social/datamodel/Interaction;

    .line 35
    .line 36
    invoke-static {p1}, Lcom/google/android/engage/social/datamodel/PortraitMediaEntity$Builder;->zze(Lcom/google/android/engage/social/datamodel/PortraitMediaEntity$Builder;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iput-object p1, p0, Lcom/google/android/engage/social/datamodel/PortraitMediaEntity;->zze:Lcom/google/common/collect/ImmutableList;

    .line 45
    .line 46
    return-void
.end method


# virtual methods
.method public getActionLinkUri()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/social/datamodel/PortraitMediaEntity;->zza:Lcom/google/android/engage/social/datamodel/zzj;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/engage/social/datamodel/zzj;->zza()Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getDisplayTimeWindows()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/engage/common/datamodel/DisplayTimeWindow;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/social/datamodel/PortraitMediaEntity;->zza:Lcom/google/android/engage/social/datamodel/zzj;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/engage/social/datamodel/zzj;->zzd()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
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
    iget-object v0, p0, Lcom/google/android/engage/social/datamodel/PortraitMediaEntity;->zza:Lcom/google/android/engage/social/datamodel/zzj;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/engage/social/datamodel/zzj;->zzc()Lcom/google/common/base/Optional;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getInteraction()Lcom/google/common/base/Optional;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional<",
            "Lcom/google/android/engage/social/datamodel/Interaction;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/social/datamodel/PortraitMediaEntity;->zzd:Lcom/google/android/engage/social/datamodel/Interaction;

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

.method public getInteractions()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/engage/social/datamodel/Interaction;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/social/datamodel/PortraitMediaEntity;->zze:Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPortraitMediaPost()Lcom/google/android/engage/social/datamodel/PortraitMediaPost;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/social/datamodel/PortraitMediaEntity;->zzb:Lcom/google/android/engage/social/datamodel/PortraitMediaPost;

    .line 2
    .line 3
    return-object v0
.end method

.method public getProfile()Lcom/google/common/base/Optional;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional<",
            "Lcom/google/android/engage/social/datamodel/Profile;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/social/datamodel/PortraitMediaEntity;->zzc:Lcom/google/android/engage/social/datamodel/Profile;

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

.method public final toBundle()Landroid/os/Bundle;
    .locals 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/google/android/engage/common/datamodel/Entity;->toBundle()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/google/android/engage/social/datamodel/PortraitMediaEntity;->zza:Lcom/google/android/engage/social/datamodel/zzj;

    .line 6
    .line 7
    const-string v2, "A"

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/google/android/engage/social/datamodel/zzj;->zzb()Landroid/os/Bundle;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/google/android/engage/social/datamodel/PortraitMediaEntity;->zzb:Lcom/google/android/engage/social/datamodel/PortraitMediaPost;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    const-string v2, "B"

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/google/android/engage/social/datamodel/PortraitMediaPost;->zza()Landroid/os/Bundle;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v1, p0, Lcom/google/android/engage/social/datamodel/PortraitMediaEntity;->zzc:Lcom/google/android/engage/social/datamodel/Profile;

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    const-string v2, "C"

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/google/android/engage/social/datamodel/Profile;->zza()Landroid/os/Bundle;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    iget-object v1, p0, Lcom/google/android/engage/social/datamodel/PortraitMediaEntity;->zze:Lcom/google/common/collect/ImmutableList;

    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    const-string v3, "D"

    .line 49
    .line 50
    if-nez v2, :cond_3

    .line 51
    .line 52
    const/4 v2, 0x0

    .line 53
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    check-cast v4, Lcom/google/android/engage/social/datamodel/Interaction;

    .line 58
    .line 59
    invoke-virtual {v4}, Lcom/google/android/engage/social/datamodel/Interaction;->zza()Landroid/os/Bundle;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 64
    .line 65
    .line 66
    new-instance v3, Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    :goto_0
    if-ge v2, v4, :cond_2

    .line 76
    .line 77
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    check-cast v5, Lcom/google/android/engage/social/datamodel/Interaction;

    .line 82
    .line 83
    invoke-virtual {v5}, Lcom/google/android/engage/social/datamodel/Interaction;->zza()Landroid/os/Bundle;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    add-int/lit8 v2, v2, 0x1

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_2
    const-string v1, "E"

    .line 94
    .line 95
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 96
    .line 97
    .line 98
    return-object v0

    .line 99
    :cond_3
    iget-object v1, p0, Lcom/google/android/engage/social/datamodel/PortraitMediaEntity;->zzd:Lcom/google/android/engage/social/datamodel/Interaction;

    .line 100
    .line 101
    if-eqz v1, :cond_4

    .line 102
    .line 103
    invoke-virtual {v1}, Lcom/google/android/engage/social/datamodel/Interaction;->zza()Landroid/os/Bundle;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 108
    .line 109
    .line 110
    :cond_4
    return-object v0
.end method
