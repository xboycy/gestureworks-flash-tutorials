<?xml version="1.0" encoding="UTF-8"?>
<GestureMarkupLanguage>
<Gesture_set>	

	<Gesture id="G" type="stroke">
		<match>
			<action>
				<initial>
					<point path_pts="(x=0.6422976501305483, y=0.03655352480417755),(x=0.5796344647519582, y=0.00783289817232376),(x=0.5143603133159269, y=0),(x=0.4490861618798956, y=0.005221932114882507),(x=0.38381201044386426, y=0.020887728459530026),(x=0.32114882506527415, y=0.04699738903394256),(x=0.26109660574412535, y=0.08093994778067885),(x=0.20887728459530025, y=0.1227154046997389),(x=0.1566579634464752, y=0.1671018276762402),(x=0.11488250652741515, y=0.2193211488250653),(x=0.07571801566579635, y=0.2741514360313316),(x=0.04699738903394256, y=0.3342036553524804),(x=0.02349869451697128, y=0.3968668407310705),(x=0.00783289817232376, y=0.46214099216710186),(x=0, y=0.5274151436031331),(x=0, y=0.5926892950391645),(x=0.013054830287206266, y=0.6579634464751958),(x=0.03133159268929504, y=0.720626631853786),(x=0.06005221932114883, y=0.7806788511749347),(x=0.09660574412532637, y=0.835509138381201),(x=0.13838120104438642, y=0.8825065274151436),(x=0.185378590078329, y=0.9268929503916449),(x=0.24281984334203655, y=0.95822454308094),(x=0.3028720626631854, y=0.97911227154047),(x=0.3681462140992167, y=0.9921671018276762),(x=0.43342036553524804, y=1),(x=0.49869451697127937, y=1),(x=0.5639686684073107, y=0.9921671018276762),(x=0.6292428198433421, y=0.9817232375979112),(x=0.6919060052219321, y=0.9634464751958225),(x=0.6919060052219321, y=0.8981723237597912),(x=0.6866840731070496, y=0.8328981723237598),(x=0.6788511749347259, y=0.7676240208877285),(x=0.6762402088772846, y=0.7023498694516971),(x=0.6736292428198434, y=0.6370757180156658),(x=0.6553524804177546, y=0.5744125326370757),(x=0.5900783289817233, y=0.5744125326370757),(x=0.5248041775456919, y=0.5718015665796344),(x=0.4595300261096606, y=0.5718015665796344),(x=0.39425587467362927, y=0.5718015665796344),(x=0.3289817232375979, y=0.577023498694517)"/>
					<cluster point_number="1"/>
					<event touchEvent="TouchEnd"/>
				</initial>
			</action>
		</match>
		<analysis>
			<algorithm class="vectormetric" type="continuous">
				<library module="stroke"/>
				<returns>
					<property id="stroke_x" result="x"/>
					<property id="stroke_y" result="y"/>
					<property id="stroke_prob" result="prob"/>
				</returns>
			</algorithm>
		</analysis>
		<mapping>
			<update dispatch_type="discrete" dispatch_mode="cluster_remove">
				<gesture_event type="stroke_letter">
					<property ref="stroke_x"/>
					<property ref="stroke_y"/>
					<property ref="stroke_prob"/>
				</gesture_event>
			</update>
		</mapping>
	</Gesture>

</Gesture_set>				
</GestureMarkupLanguage>