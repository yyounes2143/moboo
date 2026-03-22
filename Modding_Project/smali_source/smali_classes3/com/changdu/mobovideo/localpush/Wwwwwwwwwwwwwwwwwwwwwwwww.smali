.class public final synthetic Lcom/changdu/mobovideo/localpush/Wwwwwwwwwwwwwwwwwwwwwwwww;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwww:I

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/mobovideo/localpush/LocalPushType;


# direct methods
.method public synthetic constructor <init>(Lcom/changdu/mobovideo/localpush/LocalPushType;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/changdu/mobovideo/localpush/Wwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/mobovideo/localpush/LocalPushType;

    .line 5
    .line 6
    iput p2, p0, Lcom/changdu/mobovideo/localpush/Wwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwww:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/changdu/mobovideo/localpush/Wwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/mobovideo/localpush/LocalPushType;

    .line 2
    .line 3
    iget v1, p0, Lcom/changdu/mobovideo/localpush/Wwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwww:I

    .line 4
    .line 5
    check-cast p1, Lcom/changdu/mobovideo/localpush/LocalPushState;

    .line 6
    .line 7
    invoke-static {v0, v1, p1}, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->Wwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/localpush/LocalPushType;ILcom/changdu/mobovideo/localpush/LocalPushState;)Lcom/changdu/mobovideo/localpush/LocalPushState;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
