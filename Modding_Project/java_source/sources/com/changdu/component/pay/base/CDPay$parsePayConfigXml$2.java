package com.changdu.component.pay.base;

import com.changdu.component.core.CDComponent;
import com.changdu.component.pay.base.model.PayServerConfigCategory;
import com.changdu.component.pay.base.model.PayServerConfigChannel;
import com.changdu.component.pay.base.model.PayServerConfigMerchandise;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.xml.parsers.DocumentBuilderFactory;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import kotlinx.coroutines.CoroutineScope;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.changdu.component.pay.base.CDPay$parsePayConfigXml$2", f = "CDPay.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class CDPay$parsePayConfigXml$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Boolean>, Object> {
    final /* synthetic */ String $xmlStr;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CDPay$parsePayConfigXml$2(String str, Continuation<? super CDPay$parsePayConfigXml$2> continuation) {
        super(2, continuation);
        this.$xmlStr = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new CDPay$parsePayConfigXml$2(this.$xmlStr, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        ArrayList arrayList;
        ArrayList arrayList2;
        String str;
        ArrayList<PayServerConfigChannel> channelList;
        String weixinItems;
        String str2 = "AmountLimit";
        String str3 = "Rate";
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            try {
                NodeList elementsByTagName = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(new InputSource(new StringReader(this.$xmlStr))).getDocumentElement().getElementsByTagName("MerchandiseList");
                arrayList = CDPay.m;
                arrayList.clear();
                int length = elementsByTagName.getLength();
                for (int i = 0; i < length; i++) {
                    NodeList elementsByTagName2 = ((Element) elementsByTagName.item(i)).getElementsByTagName("Merchandise");
                    int length2 = elementsByTagName2.getLength();
                    int i2 = 0;
                    while (i2 < length2) {
                        Element element = (Element) elementsByTagName2.item(i2);
                        PayServerConfigMerchandise payServerConfigMerchandise = new PayServerConfigMerchandise(0L, null, 0, null, 15, null);
                        NodeList nodeList = elementsByTagName;
                        payServerConfigMerchandise.setId(Long.parseLong(element.getAttribute("Id")));
                        payServerConfigMerchandise.setName(element.getAttribute("Name"));
                        String attribute = element.getAttribute(str3);
                        if (attribute != null && attribute.length() != 0) {
                            payServerConfigMerchandise.setRate(Integer.parseInt(element.getAttribute(str3)));
                        }
                        NodeList elementsByTagName3 = ((Element) element.getElementsByTagName("ChannelList").item(0)).getElementsByTagName("Category");
                        int length3 = elementsByTagName3.getLength();
                        int i3 = 0;
                        while (i3 < length3) {
                            Element element2 = (Element) elementsByTagName3.item(i3);
                            String str4 = str3;
                            int parseInt = Integer.parseInt(element2.getAttribute("Code"));
                            PayServerConfigCategory payServerConfigCategory = new PayServerConfigCategory(0, null, 0, null, null, 31, null);
                            NodeList nodeList2 = elementsByTagName3;
                            payServerConfigCategory.setCode(parseInt);
                            int i4 = length3;
                            payServerConfigCategory.setName(element2.getAttribute("Name"));
                            String attribute2 = element2.getAttribute("ViewType");
                            if (attribute2 != null && attribute2.length() != 0) {
                                payServerConfigCategory.setViewType(Integer.parseInt(element2.getAttribute("ViewType")));
                            }
                            payServerConfigCategory.setSubTitle(element2.getAttribute("SubTitle"));
                            NodeList elementsByTagName4 = element2.getElementsByTagName("Channel");
                            int length4 = elementsByTagName4.getLength();
                            int i5 = length;
                            int i6 = 0;
                            boolean z = true;
                            while (i6 < length4) {
                                PayServerConfigChannel payServerConfigChannel = new PayServerConfigChannel(null, null, 0, 0, 0, null, 0, 127, null);
                                int i7 = length4;
                                NodeList nodeList3 = elementsByTagName4;
                                Element element3 = (Element) elementsByTagName4.item(i6);
                                int i8 = i6;
                                payServerConfigChannel.setName(element3.getAttribute("Name"));
                                payServerConfigChannel.setDescription(element3.getAttribute("Descript"));
                                String attribute3 = element3.getAttribute("PayType");
                                if (attribute3 != null && attribute3.length() != 0) {
                                    payServerConfigChannel.setPayType(Integer.parseInt(element3.getAttribute("PayType")));
                                }
                                String attribute4 = element3.getAttribute("PayId");
                                if (attribute4 != null && attribute4.length() != 0) {
                                    payServerConfigChannel.setPayId(Integer.parseInt(element3.getAttribute("PayId")));
                                }
                                String attribute5 = element3.getAttribute("ViewType");
                                if (attribute5 != null && attribute5.length() != 0) {
                                    payServerConfigChannel.setViewType(Integer.parseInt(element3.getAttribute("ViewType")));
                                }
                                String attribute6 = element3.getAttribute(str2);
                                if (attribute6 != null && attribute6.length() != 0) {
                                    payServerConfigChannel.setAmountLimit(Integer.parseInt(element3.getAttribute(str2)));
                                }
                                payServerConfigChannel.setWeixinItems(element3.getAttribute("WeixinItems"));
                                payServerConfigCategory.getChannelList().add(payServerConfigChannel);
                                if (parseInt == 14 && (channelList = payServerConfigCategory.getChannelList()) != null && !channelList.isEmpty() && (weixinItems = payServerConfigCategory.getChannelList().get(0).getWeixinItems()) != null && weixinItems.length() != 0) {
                                    Iterator<String> it = new Regex("\\|").split(payServerConfigCategory.getChannelList().get(0).getWeixinItems(), 0).iterator();
                                    while (true) {
                                        if (it.hasNext()) {
                                            List split$default = StringsKt.split$default((CharSequence) it.next(), new String[]{","}, false, 0, 6, (Object) null);
                                            str = str2;
                                            if (split$default.size() < 2) {
                                                str2 = str;
                                            } else {
                                                Iterator<String> it2 = it;
                                                if (StringsKt.equals((String) split$default.get(0), CDComponent.context.getPackageName(), true)) {
                                                    payServerConfigCategory.getChannelList().get(0).setPayId(Integer.parseInt((String) split$default.get(1)));
                                                    break;
                                                }
                                                str2 = str;
                                                it = it2;
                                            }
                                        } else {
                                            str = str2;
                                            z = false;
                                            break;
                                        }
                                    }
                                    i6 = i8 + 1;
                                    length4 = i7;
                                    elementsByTagName4 = nodeList3;
                                    str2 = str;
                                }
                                str = str2;
                                i6 = i8 + 1;
                                length4 = i7;
                                elementsByTagName4 = nodeList3;
                                str2 = str;
                            }
                            String str5 = str2;
                            if (z) {
                                payServerConfigMerchandise.getCategoryList().add(payServerConfigCategory);
                            }
                            i3++;
                            str3 = str4;
                            length3 = i4;
                            elementsByTagName3 = nodeList2;
                            length = i5;
                            str2 = str5;
                        }
                        String str6 = str2;
                        String str7 = str3;
                        int i9 = length;
                        arrayList2 = CDPay.m;
                        arrayList2.add(payServerConfigMerchandise);
                        i2++;
                        elementsByTagName = nodeList;
                        str3 = str7;
                        length = i9;
                        str2 = str6;
                    }
                }
                return Boxing.boxBoolean(true);
            } catch (Exception e) {
                e.printStackTrace();
                return Boxing.boxBoolean(false);
            }
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Boolean> continuation) {
        return ((CDPay$parsePayConfigXml$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
