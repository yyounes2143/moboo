.class public final Lcom/google/android/engage/service/PublishSubscriptionRequest;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/engage/service/PublishSubscriptionRequest$Builder;
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/engage/common/datamodel/SubscriptionEntity;

.field private final zzb:Lcom/google/android/engage/common/datamodel/AccountProfile;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/engage/service/PublishSubscriptionRequest$Builder;Lcom/google/android/engage/service/zzak;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/android/engage/service/PublishSubscriptionRequest$Builder;->zzb(Lcom/google/android/engage/service/PublishSubscriptionRequest$Builder;)Lcom/google/android/engage/common/datamodel/SubscriptionEntity;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    iput-object p2, p0, Lcom/google/android/engage/service/PublishSubscriptionRequest;->zza:Lcom/google/android/engage/common/datamodel/SubscriptionEntity;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/google/android/engage/service/PublishSubscriptionRequest$Builder;->zza(Lcom/google/android/engage/service/PublishSubscriptionRequest$Builder;)Lcom/google/android/engage/common/datamodel/AccountProfile;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/google/android/engage/service/PublishSubscriptionRequest;->zzb:Lcom/google/android/engage/common/datamodel/AccountProfile;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public getAccountProfile()Lcom/google/android/engage/common/datamodel/AccountProfile;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/service/PublishSubscriptionRequest;->zzb:Lcom/google/android/engage/common/datamodel/AccountProfile;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSubscription()Lcom/google/android/engage/common/datamodel/SubscriptionEntity;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/service/PublishSubscriptionRequest;->zza:Lcom/google/android/engage/common/datamodel/SubscriptionEntity;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zza()Lcom/google/android/engage/service/zzac;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/engage/service/zzab;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/engage/service/zzab;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/google/android/engage/common/datamodel/SubscriptionCluster$Builder;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/google/android/engage/common/datamodel/SubscriptionCluster$Builder;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lcom/google/android/engage/service/PublishSubscriptionRequest;->zzb:Lcom/google/android/engage/common/datamodel/AccountProfile;

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Lcom/google/android/engage/common/datamodel/SubscriptionCluster$Builder;->setAccountProfile(Lcom/google/android/engage/common/datamodel/AccountProfile;)Lcom/google/android/engage/common/datamodel/SubscriptionCluster$Builder;

    .line 14
    .line 15
    .line 16
    iget-object v2, p0, Lcom/google/android/engage/service/PublishSubscriptionRequest;->zza:Lcom/google/android/engage/common/datamodel/SubscriptionEntity;

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Lcom/google/android/engage/common/datamodel/SubscriptionCluster$Builder;->addSubscriptionEntity(Lcom/google/android/engage/common/datamodel/SubscriptionEntity;)Lcom/google/android/engage/common/datamodel/SubscriptionCluster$Builder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/google/android/engage/common/datamodel/SubscriptionCluster$Builder;->build()Lcom/google/android/engage/common/datamodel/SubscriptionCluster;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Lcom/google/android/engage/service/zzab;->zza(Lcom/google/android/engage/common/datamodel/zzf;)Lcom/google/android/engage/service/zzab;

    .line 26
    .line 27
    .line 28
    new-instance v1, Lcom/google/android/engage/service/zzac;

    .line 29
    .line 30
    invoke-direct {v1, v0}, Lcom/google/android/engage/service/zzac;-><init>(Lcom/google/android/engage/service/zzab;)V

    .line 31
    .line 32
    .line 33
    return-object v1
.end method
