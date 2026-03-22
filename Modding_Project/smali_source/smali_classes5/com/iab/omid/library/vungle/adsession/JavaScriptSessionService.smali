.class public Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService$TearDownHandler;
    }
.end annotation


# static fields
.field public static Wwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/vungle/utils/i; = null

.field public static Wwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String; = "adSessionId"

.field public static Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String; = "finishSession"

.field public static Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String; = "startSession"

.field public static Wwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String; = "omidJsSessionService"

.field public static Wwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String; = "data"

.field public static Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String; = "method"


# instance fields
.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/vungle/internal/f;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/iab/omid/library/vungle/adsession/AdSession;",
            ">;"
        }
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/vungle/weakreference/a;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/webkit/WebView;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/vungle/adsession/Partner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/iab/omid/library/vungle/utils/i;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/iab/omid/library/vungle/utils/i;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService;->Wwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/vungle/utils/i;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService;->Wwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService;->Wwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService;->Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService;->Wwwwwwwwwwwwwwwwwwwwww()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final Wwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/iab/omid/library/vungle/adsession/a;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService;->Wwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/iab/omid/library/vungle/adsession/AdSessionConfiguration;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p0}, Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService;->Wwwwwwwwwwwwwwwwwwwwwwwww()Lcom/iab/omid/library/vungle/adsession/AdSessionContext;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-direct {v0, v1, v2, p1}, Lcom/iab/omid/library/vungle/adsession/a;-><init>(Lcom/iab/omid/library/vungle/adsession/AdSessionConfiguration;Lcom/iab/omid/library/vungle/adsession/AdSessionContext;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService;->Wwwwwwwwwwwwwwwwwwwwwww()Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {v0, p1}, Lcom/iab/omid/library/vungle/adsession/AdSession;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/view/View;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/vungle/internal/f;

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/iab/omid/library/vungle/internal/f;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Lcom/iab/omid/library/vungle/internal/e;

    .line 47
    .line 48
    invoke-virtual {v1}, Lcom/iab/omid/library/vungle/internal/e;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/iab/omid/library/vungle/weakreference/a;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    check-cast v2, Landroid/view/View;

    .line 57
    .line 58
    invoke-virtual {v1}, Lcom/iab/omid/library/vungle/internal/e;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/iab/omid/library/vungle/adsession/FriendlyObstructionPurpose;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {v1}, Lcom/iab/omid/library/vungle/internal/e;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v0, v2, v3, v1}, Lcom/iab/omid/library/vungle/adsession/AdSession;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/view/View;Lcom/iab/omid/library/vungle/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {v0}, Lcom/iab/omid/library/vungle/adsession/AdSession;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwww()V
    .locals 3

    .line 1
    sget-object v0, Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService;->Wwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/vungle/utils/i;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/webkit/WebView;

    .line 4
    .line 5
    sget-object v2, Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService;->Wwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/iab/omid/library/vungle/utils/i;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwww()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/vungle/weakreference/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/view/View;

    .line 12
    .line 13
    return-object v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/iab/omid/library/vungle/adsession/AdSession;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/iab/omid/library/vungle/adsession/AdSession;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwww()Lcom/iab/omid/library/vungle/adsession/AdSessionContext;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/vungle/adsession/Partner;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/webkit/WebView;

    .line 9
    .line 10
    invoke-static {v0, v2, v1, v1}, Lcom/iab/omid/library/vungle/adsession/AdSessionContext;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/iab/omid/library/vungle/adsession/Partner;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)Lcom/iab/omid/library/vungle/adsession/AdSessionContext;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/vungle/adsession/Partner;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/iab/omid/library/vungle/adsession/JavaScriptSessionService;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/webkit/WebView;

    .line 18
    .line 19
    invoke-static {v0, v2, v1, v1}, Lcom/iab/omid/library/vungle/adsession/AdSessionContext;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/iab/omid/library/vungle/adsession/Partner;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)Lcom/iab/omid/library/vungle/adsession/AdSessionContext;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/iab/omid/library/vungle/adsession/AdSessionConfiguration;
    .locals 4

    .line 1
    sget-object v0, Lcom/iab/omid/library/vungle/adsession/CreativeType;->DEFINED_BY_JAVASCRIPT:Lcom/iab/omid/library/vungle/adsession/CreativeType;

    .line 2
    .line 3
    sget-object v1, Lcom/iab/omid/library/vungle/adsession/ImpressionType;->DEFINED_BY_JAVASCRIPT:Lcom/iab/omid/library/vungle/adsession/ImpressionType;

    .line 4
    .line 5
    sget-object v2, Lcom/iab/omid/library/vungle/adsession/Owner;->JAVASCRIPT:Lcom/iab/omid/library/vungle/adsession/Owner;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-static {v0, v1, v2, v2, v3}, Lcom/iab/omid/library/vungle/adsession/AdSessionConfiguration;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/iab/omid/library/vungle/adsession/CreativeType;Lcom/iab/omid/library/vungle/adsession/ImpressionType;Lcom/iab/omid/library/vungle/adsession/Owner;Lcom/iab/omid/library/vungle/adsession/Owner;Z)Lcom/iab/omid/library/vungle/adsession/AdSessionConfiguration;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method
