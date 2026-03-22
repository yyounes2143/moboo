.class public final synthetic Landroidx/media3/extractor/wav/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Landroidx/media3/extractor/ExtractorsFactory;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final createExtractors()[Landroidx/media3/extractor/Extractor;
    .locals 1

    .line 1
    invoke-static {}, Landroidx/media3/extractor/wav/WavExtractor;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()[Landroidx/media3/extractor/Extractor;

    move-result-object v0

    return-object v0
.end method

.method public synthetic createExtractors(Landroid/net/Uri;Ljava/util/Map;)[Landroidx/media3/extractor/Extractor;
    .locals 0

    .line 2
    invoke-static {p0, p1, p2}, Landroidx/media3/extractor/Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroidx/media3/extractor/ExtractorsFactory;Landroid/net/Uri;Ljava/util/Map;)[Landroidx/media3/extractor/Extractor;

    move-result-object p1

    return-object p1
.end method

.method public synthetic experimentalSetTextTrackTranscodingEnabled(Z)Landroidx/media3/extractor/ExtractorsFactory;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/extractor/Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroidx/media3/extractor/ExtractorsFactory;Z)Landroidx/media3/extractor/ExtractorsFactory;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public synthetic setSubtitleParserFactory(Landroidx/media3/extractor/text/SubtitleParser$Factory;)Landroidx/media3/extractor/ExtractorsFactory;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/extractor/Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroidx/media3/extractor/ExtractorsFactory;Landroidx/media3/extractor/text/SubtitleParser$Factory;)Landroidx/media3/extractor/ExtractorsFactory;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
