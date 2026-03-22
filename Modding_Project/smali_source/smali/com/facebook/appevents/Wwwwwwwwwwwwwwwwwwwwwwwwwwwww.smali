.class public final synthetic Lcom/facebook/appevents/Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/appevents/FlushStatistics;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/appevents/SessionEventsState;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/GraphRequest;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/appevents/AccessTokenAppIdPair;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/GraphRequest;Lcom/facebook/appevents/SessionEventsState;Lcom/facebook/appevents/FlushStatistics;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/facebook/appevents/Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/appevents/AccessTokenAppIdPair;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/facebook/appevents/Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/GraphRequest;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/facebook/appevents/Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/appevents/SessionEventsState;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/facebook/appevents/Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/appevents/FlushStatistics;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/GraphResponse;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/facebook/appevents/Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/appevents/AccessTokenAppIdPair;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/facebook/appevents/Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/GraphRequest;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/facebook/appevents/Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/appevents/SessionEventsState;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/facebook/appevents/Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/appevents/FlushStatistics;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3, p1}, Lcom/facebook/appevents/AppEventQueue;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/GraphRequest;Lcom/facebook/appevents/SessionEventsState;Lcom/facebook/appevents/FlushStatistics;Lcom/facebook/GraphResponse;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
