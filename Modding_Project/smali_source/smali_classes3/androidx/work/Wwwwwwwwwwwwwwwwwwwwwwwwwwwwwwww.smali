.class public final synthetic Landroidx/work/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lkotlin/jvm/functions/Function2;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lkotlinx/coroutines/CoroutineStart;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lkotlin/coroutines/CoroutineContext;


# direct methods
.method public synthetic constructor <init>(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/work/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lkotlin/coroutines/CoroutineContext;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/work/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lkotlinx/coroutines/CoroutineStart;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/work/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lkotlin/jvm/functions/Function2;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/work/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lkotlin/coroutines/CoroutineContext;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/work/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lkotlinx/coroutines/CoroutineStart;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/work/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lkotlin/jvm/functions/Function2;

    .line 6
    .line 7
    invoke-static {v0, v1, v2, p1}, Landroidx/work/ListenableFutureKt;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
