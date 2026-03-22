.class public final Lcom/google/android/engage/social/datamodel/SocialPostEntity;
.super Lcom/google/android/engage/common/datamodel/Entity;
.source "Proguard"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/engage/social/datamodel/SocialPostEntity$Builder;
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/engage/social/datamodel/zzj;

.field private final zzb:Lcom/google/android/engage/social/datamodel/GenericPost;

.field private final zzc:Lcom/google/android/engage/social/datamodel/Profile;

.field private final zzd:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/engage/social/datamodel/SocialPostEntity$Builder;Lcom/google/android/engage/social/datamodel/zzk;)V
    .locals 2

    .line 1
    const/16 p2, 0x19

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/google/android/engage/common/datamodel/Entity;-><init>(I)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/google/android/engage/social/datamodel/SocialPostEntity$Builder;->zzc(Lcom/google/android/engage/social/datamodel/SocialPostEntity$Builder;)Lcom/google/android/engage/social/datamodel/zzh;

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
    iput-object v0, p0, Lcom/google/android/engage/social/datamodel/SocialPostEntity;->zza:Lcom/google/android/engage/social/datamodel/zzj;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/google/android/engage/social/datamodel/SocialPostEntity$Builder;->zza(Lcom/google/android/engage/social/datamodel/SocialPostEntity$Builder;)Lcom/google/android/engage/social/datamodel/GenericPost;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    iput-object p2, p0, Lcom/google/android/engage/social/datamodel/SocialPostEntity;->zzb:Lcom/google/android/engage/social/datamodel/GenericPost;

    .line 23
    .line 24
    invoke-static {p1}, Lcom/google/android/engage/social/datamodel/SocialPostEntity$Builder;->zzb(Lcom/google/android/engage/social/datamodel/SocialPostEntity$Builder;)Lcom/google/android/engage/social/datamodel/Profile;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    iput-object p2, p0, Lcom/google/android/engage/social/datamodel/SocialPostEntity;->zzc:Lcom/google/android/engage/social/datamodel/Profile;

    .line 29
    .line 30
    invoke-static {p1}, Lcom/google/android/engage/social/datamodel/SocialPostEntity$Builder;->zzd(Lcom/google/android/engage/social/datamodel/SocialPostEntity$Builder;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Lcom/google/android/engage/social/datamodel/SocialPostEntity;->zzd:Ljava/util/List;

    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method public getActionLinkUri()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/social/datamodel/SocialPostEntity;->zza:Lcom/google/android/engage/social/datamodel/zzj;

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
    iget-object v0, p0, Lcom/google/android/engage/social/datamodel/SocialPostEntity;->zza:Lcom/google/android/engage/social/datamodel/zzj;

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
    iget-object v0, p0, Lcom/google/android/engage/social/datamodel/SocialPostEntity;->zza:Lcom/google/android/engage/social/datamodel/zzj;

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

.method public getGenericPost()Lcom/google/android/engage/social/datamodel/GenericPost;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/social/datamodel/SocialPostEntity;->zzb:Lcom/google/android/engage/social/datamodel/GenericPost;

    .line 2
    .line 3
    return-object v0
.end method

.method public getInteractions()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/engage/social/datamodel/Interaction;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/social/datamodel/SocialPostEntity;->zzd:Ljava/util/List;

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
    iget-object v0, p0, Lcom/google/android/engage/social/datamodel/SocialPostEntity;->zzc:Lcom/google/android/engage/social/datamodel/Profile;

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
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/google/android/engage/common/datamodel/Entity;->toBundle()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/google/android/engage/social/datamodel/SocialPostEntity;->zza:Lcom/google/android/engage/social/datamodel/zzj;

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
    iget-object v1, p0, Lcom/google/android/engage/social/datamodel/SocialPostEntity;->zzb:Lcom/google/android/engage/social/datamodel/GenericPost;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    const-string v2, "B"

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/google/android/engage/social/datamodel/GenericPost;->zza()Landroid/os/Bundle;

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
    iget-object v1, p0, Lcom/google/android/engage/social/datamodel/SocialPostEntity;->zzc:Lcom/google/android/engage/social/datamodel/Profile;

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
    iget-object v1, p0, Lcom/google/android/engage/social/datamodel/SocialPostEntity;->zzd:Ljava/util/List;

    .line 43
    .line 44
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-nez v2, :cond_3

    .line 49
    .line 50
    new-instance v2, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-eqz v3, :cond_2

    .line 64
    .line 65
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    check-cast v3, Lcom/google/android/engage/social/datamodel/Interaction;

    .line 70
    .line 71
    invoke-virtual {v3}, Lcom/google/android/engage/social/datamodel/Interaction;->zza()Landroid/os/Bundle;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_2
    const-string v1, "D"

    .line 80
    .line 81
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 82
    .line 83
    .line 84
    :cond_3
    return-object v0
.end method
