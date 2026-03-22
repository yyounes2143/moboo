.class public Lcom/didi/drouter/proxy/com_changdu_component_pay_google_PayServiceGoogleImpl;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/didi/drouter/store/IRouterProxy;


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


# virtual methods
.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;)Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 1
    new-instance p1, Lcom/changdu/component/pay/google/PayServiceGoogleImpl;

    .line 2
    .line 3
    invoke-direct {p1}, Lcom/changdu/component/pay/google/PayServiceGoogleImpl;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method
