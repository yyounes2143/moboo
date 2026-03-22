.class public final Lcom/google/android/engage/common/datamodel/BundledSubscription;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/engage/common/datamodel/BundledSubscription$Builder;
    }
.end annotation


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:I

.field private final zzc:Ljava/lang/Long;

.field private final zzd:Lcom/google/common/collect/ImmutableList;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/engage/common/datamodel/BundledSubscription$Builder;Lcom/google/android/engage/common/datamodel/zzg;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/android/engage/common/datamodel/BundledSubscription$Builder;->zzd(Lcom/google/android/engage/common/datamodel/BundledSubscription$Builder;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    iput-object p2, p0, Lcom/google/android/engage/common/datamodel/BundledSubscription;->zza:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/google/android/engage/common/datamodel/BundledSubscription$Builder;->zza(Lcom/google/android/engage/common/datamodel/BundledSubscription$Builder;)I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    iput p2, p0, Lcom/google/android/engage/common/datamodel/BundledSubscription;->zzb:I

    .line 15
    .line 16
    invoke-static {p1}, Lcom/google/android/engage/common/datamodel/BundledSubscription$Builder;->zzc(Lcom/google/android/engage/common/datamodel/BundledSubscription$Builder;)Ljava/lang/Long;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    iput-object p2, p0, Lcom/google/android/engage/common/datamodel/BundledSubscription;->zzc:Ljava/lang/Long;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/google/android/engage/common/datamodel/BundledSubscription$Builder;->zzb(Lcom/google/android/engage/common/datamodel/BundledSubscription$Builder;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Lcom/google/android/engage/common/datamodel/BundledSubscription;->zzd:Lcom/google/common/collect/ImmutableList;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public getBundledSubscriptionProviderPackageName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/BundledSubscription;->zza:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEntitlements()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/engage/common/datamodel/SubscriptionEntitlement;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/BundledSubscription;->zzd:Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getExpirationTimeMillis()Ljava/lang/Long;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/BundledSubscription;->zzc:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSubscriptionType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/engage/common/datamodel/BundledSubscription;->zzb:I

    .line 2
    .line 3
    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 6
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
    iget-object v1, p0, Lcom/google/android/engage/common/datamodel/BundledSubscription;->zza:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    const-string v2, "A"

    .line 15
    .line 16
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget v1, p0, Lcom/google/android/engage/common/datamodel/BundledSubscription;->zzb:I

    .line 20
    .line 21
    const-string v2, "B"

    .line 22
    .line 23
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/google/android/engage/common/datamodel/BundledSubscription;->zzc:Ljava/lang/Long;

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    const-string v2, "C"

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 33
    .line 34
    .line 35
    move-result-wide v3

    .line 36
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 37
    .line 38
    .line 39
    :cond_1
    iget-object v1, p0, Lcom/google/android/engage/common/datamodel/BundledSubscription;->zzd:Lcom/google/common/collect/ImmutableList;

    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-nez v2, :cond_3

    .line 46
    .line 47
    new-instance v2, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    const/4 v4, 0x0

    .line 57
    :goto_0
    if-ge v4, v3, :cond_2

    .line 58
    .line 59
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    check-cast v5, Lcom/google/android/engage/common/datamodel/SubscriptionEntitlement;

    .line 64
    .line 65
    invoke-virtual {v5}, Lcom/google/android/engage/common/datamodel/SubscriptionEntitlement;->toBundle()Landroid/os/Bundle;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    add-int/lit8 v4, v4, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    const-string v1, "D"

    .line 76
    .line 77
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 78
    .line 79
    .line 80
    :cond_3
    return-object v0
.end method
