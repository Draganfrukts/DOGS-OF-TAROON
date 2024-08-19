import { useBackend } from "../backend";
import { LabeledList, Section, Stack, BlockQuote, Box } from "../components";
import { Window } from "../layouts";

export const SepticShockCredits = (props, context) => {
  const { act, data } = useBackend(context);

  return (
    <Window
      title="Dogs of Taroon Credits"
      width={450}
      height={700}
      theme="quake">
      <Window.Content>
        <Stack
          height="100%"
          overflowX="hidden"
          overflowY="scroll"
          vertical>
          <Stack.Item>
            <Section title="The Gobi In The Room">
              <LabeledList>
              <LabeledList.Item label="Dragonfruits">
                  Dogs of Taroon Solo Developer
                </LabeledList.Item>
                <LabeledList.Item label="Puny Edward">
                  Creator of Taroon, Cultural Advisor, Key Writer
                </LabeledList.Item>
                <LabeledList.Item label="Gumphrey">
                  Creator of Taroon, Key Writer
                </LabeledList.Item>
                <LabeledList.Item label="(Angry Black Man) Davusi">
                  Key Writer for the Taroon lore super-doc
                </LabeledList.Item>
                <LabeledList.Item label="Blindpoet">
                  Creator of Iseuria, Key Writer
                </LabeledList.Item>
                <LabeledList.Item label="Taroon in Turmoil Community">
                  You created and shared a great story with a great conclusion.
                </LabeledList.Item>
              </LabeledList>
            </Section>
          </Stack.Item>
          <Stack.Item>
            <Section title="Original EFN Developers">
              <LabeledList>
              <LabeledList.Item label="Remis12">
                  Creator of Escape From Nevado, Coder
                </LabeledList.Item>
                <LabeledList.Item label="Bomberman66">
                  Head Coder of Escape From Nevado, Creator of Septic Shock
                </LabeledList.Item>
                <LabeledList.Item label="Eve">
                  Head Spriter of Escape From Nevado
                </LabeledList.Item>
                <LabeledList.Item label="Redrick">
                  Spriter for Escape From Nevado
                </LabeledList.Item>
                <LabeledList.Item label="Admiralwiseguy">
                  Spriter for Escape From Nevado
                </LabeledList.Item>
                <LabeledList.Item label="Schwick">
                  Spriter for Escape From Nevado
                </LabeledList.Item>
                <LabeledList.Item label="Spooky">
                  Spriter for Escape From Nevado
                </LabeledList.Item>
                <LabeledList.Item label="Infrared Baron">
                  Spriter for Escape From Nevado & Mojave Sun
                </LabeledList.Item>
                <LabeledList.Item label="Lordkang45">
                  Lorekeeper for Escape From Nevado
                </LabeledList.Item>
              </LabeledList>
            </Section>
          </Stack.Item>
          <Stack.Item>
            <Section title="Special thanks to...">
              <LabeledList>
              <LabeledList.Item label="OrionTheFox">
                  Making EFN github-friendly.
                </LabeledList.Item>
                <LabeledList.Item label="/TG/ Station">
                  Providing a base for the code.
                </LabeledList.Item>
                <LabeledList.Item label="Goonstation">
                  Providing several sprites.
                </LabeledList.Item>
                <LabeledList.Item label="CEV Eris">
                  Providing several sprites.
                </LabeledList.Item>
                <LabeledList.Item label="Mojave Sun">
                  Providing several sprites.
                </LabeledList.Item>
              </LabeledList>
            </Section>
          </Stack.Item>
          <Stack.Item>
            <Section
              title="Parting Message"
              style={{
                "font-size": "150%",
              }}>
              <LabeledList>
                <LabeledList.Item label="In Memoriam...">
                This modification of the Escape From Nevado codebase is dedicated to every defending life lost in the ever-lasting war against Imperialism in the Middle East, and to those who continue to fight to ensure that their children will never live in a future under the crushing boot of foreign authority.

While Taroon is a fictional Nation on a fictional world, it's conflict is not dissimilar to what many people are experiencing today and will sadly continue to experience for possibly decades to come as a result of the ever-growing desire for power of the United States of America, Russia, Israel, and other military and political aggressors.

We stand in solidarity with those who resist. Their land is not yours to conquer.
الله يحفظكم
                </LabeledList.Item>
              </LabeledList>
            </Section>
          </Stack.Item>
        </Stack>
      </Window.Content>
    </Window>
  );
};
