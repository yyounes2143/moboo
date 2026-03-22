.class public final Lcom/changdu/component/pay/google/v;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "Proguard"


# instance fields
.field public a:Ljava/util/ArrayList;

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lcom/changdu/component/pay/google/x;

.field public d:I


# direct methods
.method public constructor <init>(Lcom/changdu/component/pay/google/x;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/changdu/component/pay/google/v;->c:Lcom/changdu/component/pay/google/x;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/changdu/component/pay/google/v;->b:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lcom/changdu/component/pay/google/v;->d:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lcom/changdu/component/pay/google/v;->d:I

    .line 9
    .line 10
    iget-object p1, p0, Lcom/changdu/component/pay/google/v;->c:Lcom/changdu/component/pay/google/x;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p1, v0, p0}, Lcom/changdu/component/pay/google/x;->b(Ljava/util/ArrayList;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method
