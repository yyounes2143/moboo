.class public final synthetic Lkotlinx/coroutines/selects/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwww:Lkotlinx/coroutines/selects/OnTimeout;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwww:Lkotlinx/coroutines/selects/SelectInstance;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/selects/SelectInstance;Lkotlinx/coroutines/selects/OnTimeout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lkotlinx/coroutines/selects/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lkotlinx/coroutines/selects/SelectInstance;

    .line 5
    .line 6
    iput-object p2, p0, Lkotlinx/coroutines/selects/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwww:Lkotlinx/coroutines/selects/OnTimeout;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/selects/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lkotlinx/coroutines/selects/SelectInstance;

    .line 2
    .line 3
    iget-object v1, p0, Lkotlinx/coroutines/selects/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwww:Lkotlinx/coroutines/selects/OnTimeout;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlinx/coroutines/selects/OnTimeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lkotlinx/coroutines/selects/SelectInstance;Lkotlinx/coroutines/selects/OnTimeout;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
