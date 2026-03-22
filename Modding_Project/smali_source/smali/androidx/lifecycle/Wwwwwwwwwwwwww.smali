.class public final synthetic Landroidx/lifecycle/Wwwwwwwwwwwwww;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwww:Landroidx/arch/core/util/Function;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwww:Landroidx/lifecycle/MediatorLiveData;


# direct methods
.method public synthetic constructor <init>(Landroidx/lifecycle/MediatorLiveData;Landroidx/arch/core/util/Function;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/lifecycle/Wwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroidx/lifecycle/MediatorLiveData;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/lifecycle/Wwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwww:Landroidx/arch/core/util/Function;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/Wwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroidx/lifecycle/MediatorLiveData;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/lifecycle/Wwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwww:Landroidx/arch/core/util/Function;

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Landroidx/lifecycle/Transformations;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroidx/lifecycle/MediatorLiveData;Landroidx/arch/core/util/Function;Ljava/lang/Object;)Lkotlin/Unit;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
