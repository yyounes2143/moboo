.class Lcom/iab/omid/library/mmadbridge/adsession/JavaScriptSessionService$1;
.super Ljava/util/TimerTask;


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/mmadbridge/adsession/JavaScriptSessionService;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Timer;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/mmadbridge/adsession/JavaScriptSessionService$TearDownHandler;


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/JavaScriptSessionService$1;->Wwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/mmadbridge/adsession/JavaScriptSessionService;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/iab/omid/library/mmadbridge/adsession/JavaScriptSessionService;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/iab/omid/library/mmadbridge/adsession/JavaScriptSessionService;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/JavaScriptSessionService$1;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/mmadbridge/adsession/JavaScriptSessionService$TearDownHandler;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-interface {v0, v1}, Lcom/iab/omid/library/mmadbridge/adsession/JavaScriptSessionService$TearDownHandler;->onTearDown(Z)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/JavaScriptSessionService$1;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Timer;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 15
    .line 16
    .line 17
    return-void
.end method
