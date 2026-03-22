.class public Lcom/didi/drouter/store/RouterKey;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroidx/lifecycle/Lifecycle;

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[Ljava/lang/String;

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "+",
            "Lcom/didi/drouter/router/IRouterInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lcom/didi/drouter/store/RouterKey;
    .locals 1

    .line 1
    new-instance v0, Lcom/didi/drouter/store/RouterKey;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/didi/drouter/store/RouterKey;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    iput-object p0, v0, Lcom/didi/drouter/store/RouterKey;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/net/Uri;

    .line 11
    .line 12
    return-object v0
.end method


# virtual methods
.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroidx/lifecycle/Lifecycle;)Lcom/didi/drouter/store/RouterKey;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/didi/drouter/store/RouterKey;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroidx/lifecycle/Lifecycle;

    .line 2
    .line 3
    return-object p0
.end method
