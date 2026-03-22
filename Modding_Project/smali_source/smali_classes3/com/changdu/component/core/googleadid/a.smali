.class public final Lcom/changdu/component/core/googleadid/a;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Lcom/changdu/component/core/googleadid/b;


# direct methods
.method public constructor <init>(Lcom/changdu/component/core/googleadid/b;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/changdu/component/core/googleadid/a;->b:Lcom/changdu/component/core/googleadid/b;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/changdu/component/core/googleadid/a;->a:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/changdu/component/core/googleadid/a;->b:Lcom/changdu/component/core/googleadid/b;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/changdu/component/core/googleadid/b;->c:Lcom/changdu/component/core/googleadid/c;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/changdu/component/core/googleadid/a;->a:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Lcom/changdu/component/core/googleadid/d;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    check-cast v1, Ljava/lang/String;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/changdu/component/core/googleadid/d;->a:Lcom/changdu/component/core/googleadid/GoogleAdId$OnGoogleAdIdReadListener;

    .line 15
    .line 16
    invoke-interface {v0, v1}, Lcom/changdu/component/core/googleadid/GoogleAdId$OnGoogleAdIdReadListener;->onGoogleAdIdRead(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
