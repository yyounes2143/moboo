.class public final Lcom/changdu/component/core/googleadid/b;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:[Ljava/lang/Object;

.field public final synthetic b:Landroid/os/Handler;

.field public final synthetic c:Lcom/changdu/component/core/googleadid/c;


# direct methods
.method public constructor <init>(Lcom/changdu/component/core/googleadid/d;[Ljava/lang/Object;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/changdu/component/core/googleadid/b;->c:Lcom/changdu/component/core/googleadid/c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/changdu/component/core/googleadid/b;->a:[Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/changdu/component/core/googleadid/b;->b:Landroid/os/Handler;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/changdu/component/core/googleadid/b;->c:Lcom/changdu/component/core/googleadid/c;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/changdu/component/core/googleadid/b;->a:[Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lcom/changdu/component/core/googleadid/d;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    check-cast v1, [Landroid/content/Context;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    aget-object v0, v1, v0

    .line 14
    .line 15
    invoke-static {v0}, Lcom/changdu/component/core/googleadid/GoogleAdId;->getGoogleAdId(Landroid/content/Context;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/changdu/component/core/googleadid/b;->b:Landroid/os/Handler;

    .line 20
    .line 21
    new-instance v2, Lcom/changdu/component/core/googleadid/a;

    .line 22
    .line 23
    invoke-direct {v2, p0, v0}, Lcom/changdu/component/core/googleadid/a;-><init>(Lcom/changdu/component/core/googleadid/b;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 27
    .line 28
    .line 29
    return-void
.end method
