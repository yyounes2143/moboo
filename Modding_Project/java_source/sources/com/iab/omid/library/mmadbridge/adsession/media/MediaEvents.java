package com.iab.omid.library.mmadbridge.adsession.media;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.iab.omid.library.mmadbridge.adsession.AdSession;
import com.iab.omid.library.mmadbridge.adsession.a;
import com.iab.omid.library.mmadbridge.internal.i;
import com.iab.omid.library.mmadbridge.utils.c;
import com.iab.omid.library.mmadbridge.utils.g;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public final class MediaEvents {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final a f8269Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public MediaEvents(a aVar) {
        this.f8269Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = aVar;
    }

    public static MediaEvents Wwwwwwwwwwwwwwwwwwwwwwwwwwww(AdSession adSession) {
        a aVar = (a) adSession;
        g.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(adSession, "AdSession is null");
        g.Wwwwwwwwwwwwwwwwwwwwwwww(aVar);
        g.Wwwwwwwwwwwwwwwwwwwwwwwwwww(aVar);
        g.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(aVar);
        g.Wwwwwwwwwwwwwwwwwwwwww(aVar);
        MediaEvents mediaEvents = new MediaEvents(aVar);
        aVar.Wwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwww(mediaEvents);
        return mediaEvents;
    }

    public void Wwwwwwwwwwwwwwwwwww(float f) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(f);
        g.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f8269Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        JSONObject jSONObject = new JSONObject();
        c.Wwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject, "mediaPlayerVolume", Float.valueOf(f));
        c.Wwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject, "deviceVolume", Float.valueOf(i.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()));
        this.f8269Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwww("volumeChange", jSONObject);
    }

    public void Wwwwwwwwwwwwwwwwwwww() {
        g.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f8269Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        this.f8269Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwww("thirdQuartile");
    }

    public void Wwwwwwwwwwwwwwwwwwwww(float f, float f2) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(f);
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(f2);
        g.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f8269Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        JSONObject jSONObject = new JSONObject();
        c.Wwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject, TypedValues.TransitionType.S_DURATION, Float.valueOf(f));
        c.Wwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject, "mediaPlayerVolume", Float.valueOf(f2));
        c.Wwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject, "deviceVolume", Float.valueOf(i.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()));
        this.f8269Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwww("start", jSONObject);
    }

    public void Wwwwwwwwwwwwwwwwwwwwww() {
        g.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f8269Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        this.f8269Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwww("skipped");
    }

    public void Wwwwwwwwwwwwwwwwwwwwwww() {
        g.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f8269Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        this.f8269Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwww(CampaignEx.JSON_NATIVE_VIDEO_RESUME);
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwww(PlayerState playerState) {
        g.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(playerState, "PlayerState is null");
        g.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f8269Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        JSONObject jSONObject = new JSONObject();
        c.Wwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject, "state", playerState);
        this.f8269Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwww("playerStateChange", jSONObject);
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwww() {
        g.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f8269Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        this.f8269Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwww(CampaignEx.JSON_NATIVE_VIDEO_PAUSE);
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwww() {
        g.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f8269Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        this.f8269Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwww(CampaignEx.JSON_NATIVE_VIDEO_MIDPOINT);
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        g.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f8269Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        this.f8269Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwww("firstQuartile");
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(float f) {
        if (f >= 0.0f && f <= 1.0f) {
            return;
        }
        throw new IllegalArgumentException("Invalid Media volume");
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(float f) {
        if (f > 0.0f) {
            return;
        }
        throw new IllegalArgumentException("Invalid Media duration");
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        g.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f8269Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        this.f8269Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwww(CampaignEx.JSON_NATIVE_VIDEO_COMPLETE);
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        g.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f8269Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        this.f8269Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwww("bufferStart");
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        g.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f8269Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        this.f8269Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwww("bufferFinish");
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(InteractionType interactionType) {
        g.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(interactionType, "InteractionType is null");
        g.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f8269Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        JSONObject jSONObject = new JSONObject();
        c.Wwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject, "interactionType", interactionType);
        this.f8269Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwww("adUserInteraction", jSONObject);
    }
}
