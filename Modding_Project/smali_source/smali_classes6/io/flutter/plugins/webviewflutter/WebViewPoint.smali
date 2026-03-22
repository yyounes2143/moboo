.class public Lio/flutter/plugins/webviewflutter/WebViewPoint;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field private final x:J

.field private final y:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lio/flutter/plugins/webviewflutter/WebViewPoint;->x:J

    .line 5
    .line 6
    iput-wide p3, p0, Lio/flutter/plugins/webviewflutter/WebViewPoint;->y:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getX()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/flutter/plugins/webviewflutter/WebViewPoint;->x:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getY()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/flutter/plugins/webviewflutter/WebViewPoint;->y:J

    .line 2
    .line 3
    return-wide v0
.end method
