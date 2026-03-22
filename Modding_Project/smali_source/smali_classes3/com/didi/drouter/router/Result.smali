.class public Lcom/didi/drouter/router/Result;
.super Lcom/didi/drouter/router/DataExtras;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/drouter/router/DataExtras<",
        "Lcom/didi/drouter/router/Result;",
        ">;"
    }
.end annotation


# instance fields
.field public Wwwwwwwwwwwwwwwwwwwwwwwww:I

.field public Wwwwwwwwwwwwwwwwwwwwwwwwww:I

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/view/View;

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroidx/fragment/app/Fragment;

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/ResultAgent;


# direct methods
.method public constructor <init>(Lcom/didi/drouter/router/Request;Ljava/util/Collection;ILcom/didi/drouter/router/RouterCallback;)V
    .locals 1
    .param p1    # Lcom/didi/drouter/router/Request;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/drouter/router/Request;",
            "Ljava/util/Collection<",
            "Lcom/didi/drouter/router/Request;",
            ">;I",
            "Lcom/didi/drouter/router/RouterCallback;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/didi/drouter/router/DataExtras;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0xc8

    .line 5
    .line 6
    iput v0, p0, Lcom/didi/drouter/router/Result;->Wwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 7
    .line 8
    new-instance v0, Lcom/didi/drouter/router/ResultAgent;

    .line 9
    .line 10
    invoke-direct {v0, p1, p2, p0, p4}, Lcom/didi/drouter/router/ResultAgent;-><init>(Lcom/didi/drouter/router/Request;Ljava/util/Collection;Lcom/didi/drouter/router/Result;Lcom/didi/drouter/router/RouterCallback;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/didi/drouter/router/Result;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/ResultAgent;

    .line 14
    .line 15
    iput p3, p0, Lcom/didi/drouter/router/Result;->Wwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 16
    .line 17
    return-void
.end method
