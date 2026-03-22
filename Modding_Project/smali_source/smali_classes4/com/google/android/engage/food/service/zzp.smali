.class public final synthetic Lcom/google/android/engage/food/service/zzp;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic zza:Lcom/google/android/engage/service/zzab;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/engage/service/zzab;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/engage/food/service/zzp;->zza:Lcom/google/android/engage/service/zzab;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/food/service/zzp;->zza:Lcom/google/android/engage/service/zzab;

    .line 2
    .line 3
    check-cast p1, Lcom/google/android/engage/food/datamodel/FoodShoppingList;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/engage/service/zzab;->zza(Lcom/google/android/engage/common/datamodel/zzf;)Lcom/google/android/engage/service/zzab;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
