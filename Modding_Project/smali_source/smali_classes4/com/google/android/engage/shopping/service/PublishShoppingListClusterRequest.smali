.class public Lcom/google/android/engage/shopping/service/PublishShoppingListClusterRequest;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/engage/shopping/service/PublishShoppingListClusterRequest$Builder;
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/engage/shopping/datamodel/ShoppingList;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/engage/shopping/service/PublishShoppingListClusterRequest$Builder;Lcom/google/android/engage/shopping/service/zzp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/android/engage/shopping/service/PublishShoppingListClusterRequest$Builder;->zza(Lcom/google/android/engage/shopping/service/PublishShoppingListClusterRequest$Builder;)Lcom/google/android/engage/shopping/datamodel/ShoppingList;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/google/android/engage/shopping/service/PublishShoppingListClusterRequest;->zza:Lcom/google/android/engage/shopping/datamodel/ShoppingList;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public getShoppingList()Lcom/google/android/engage/shopping/datamodel/ShoppingList;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/shopping/service/PublishShoppingListClusterRequest;->zza:Lcom/google/android/engage/shopping/datamodel/ShoppingList;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zza()Lcom/google/android/engage/service/zzac;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/engage/service/zzab;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/engage/service/zzab;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/engage/shopping/service/PublishShoppingListClusterRequest;->zza:Lcom/google/android/engage/shopping/datamodel/ShoppingList;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/engage/service/zzab;->zza(Lcom/google/android/engage/common/datamodel/zzf;)Lcom/google/android/engage/service/zzab;

    .line 9
    .line 10
    .line 11
    new-instance v1, Lcom/google/android/engage/service/zzac;

    .line 12
    .line 13
    invoke-direct {v1, v0}, Lcom/google/android/engage/service/zzac;-><init>(Lcom/google/android/engage/service/zzab;)V

    .line 14
    .line 15
    .line 16
    return-object v1
.end method
