.class public Lcom/didi/drouter/store/ServiceKey;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/store/RouterMeta;

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroidx/lifecycle/Lifecycle;

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/service/IFeatureMatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/didi/drouter/service/IFeatureMatcher<",
            "*>;"
        }
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/didi/drouter/store/ServiceKey;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Class;)Lcom/didi/drouter/store/ServiceKey;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/didi/drouter/store/ServiceKey<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/didi/drouter/store/ServiceKey;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/didi/drouter/store/ServiceKey;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p0, v0, Lcom/didi/drouter/store/ServiceKey;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Class;

    .line 7
    .line 8
    return-object v0
.end method


# virtual methods
.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroidx/lifecycle/Lifecycle;)Lcom/didi/drouter/store/ServiceKey;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/Lifecycle;",
            ")",
            "Lcom/didi/drouter/store/ServiceKey<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/didi/drouter/store/ServiceKey;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroidx/lifecycle/Lifecycle;

    .line 2
    .line 3
    return-object p0
.end method
